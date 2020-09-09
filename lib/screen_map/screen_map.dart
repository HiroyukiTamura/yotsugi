import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:yotsugi/strings.dart';
import 'package:yotsugi/styles.dart';
import 'package:yotsugi/util.dart';

class ScreenGoogleMapMain extends StatefulWidget {
  const ScreenGoogleMapMain();

  @override
  State<ScreenGoogleMapMain> createState() => ScreenGoogleMapState();
}

class ScreenGoogleMapState extends State<ScreenGoogleMapMain> {
  ScreenGoogleMapState()
      : _googlePlex = const CameraPosition(
          target: _latLng, //四ツ木の座標
          zoom: _ZOOM,
        );

  static const double _ZOOM = 15;

  static const _latLng = LatLng(35.730461, 139.841722);

  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  final CameraPosition _googlePlex;

  Future<String> _loadMapStyleFuture;

  @override
  void initState() {
    super.initState();
    _loadMapStyleFuture = _loadMapStyle();
  }

  /// todo pinを立てる必要がある
  @override
  Widget build(BuildContext context) => Scaffold(
        body: FutureBuilder<String>(
            future: _loadMapStyleFuture,
            builder: (context, snapshot) {
              if (!snapshot.hasData) return const SizedBox();

              return Stack(
                children: [
                  GoogleMap(
                    initialCameraPosition: _googlePlex,
                    myLocationButtonEnabled: false,
                    zoomControlsEnabled: false,
                    compassEnabled: true,
                    onMapCreated: (controller) {
                      controller.setMapStyle(snapshot.data);
                      _controller.complete(controller);
                    },
                    markers: <Marker>{
                      Marker(
                        position: _latLng,
                        markerId: MarkerId('spot'),
                        //todo icon作成
                      )
                    },
                  ),
                  SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: RawMaterialButton(
                        constraints:
                            const BoxConstraints(minWidth: 36, minHeight: 36),
                        onPressed: () => Navigator.of(context).pop(),
                        fillColor: Colors.white,
                        padding: const EdgeInsets.all(6),
                        shape: const CircleBorder(),
                        elevation: 0,
                        child: const Icon(
                          Icons.arrow_back,
                          size: 24,
                        ),
                      ),
                    ),
                  )
                ],
              );
            }),
        floatingActionButton: FloatingActionButton(
          onPressed: () => _onTapGps(context),
          child: const Icon(Icons.gps_fixed),
        ),
      );

  Future<void> _moveMap(LocationData locationData) async {
    final GoogleMapController controller = await _controller.future;
    CameraPosition position = CameraPosition(
        target: LatLng(locationData.latitude, locationData.longitude),
        zoom: _ZOOM);

    controller.animateCamera(CameraUpdate.newCameraPosition(position));
  }

  Future<void> _onTapGps(BuildContext context) async {
    final location = Location();
    final pmsStatus = await location.hasPermission();
    if (pmsStatus == PermissionStatus.denied ||
        pmsStatus == PermissionStatus.deniedForever) {
      final newPmsStatus = await location.requestPermission();
      if (newPmsStatus != PermissionStatus.granted) {
        await _showRelational(context);
        return;
      }
    }

    final serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      final acceptService = await location.requestService();
      if (!acceptService) {
        await _notifyGpsServiceIsOff(context);
        return;
      }
    }

    LocationData locationData;
    try {
      locationData = await location.getLocation();
    } on PlatformException catch (e) {
      Util.reportCrash(e);
      return;
    }

    _moveMap(locationData);
  }

  Future<String> _loadMapStyle() async =>
      rootBundle.loadString('assets/map_style.json');

  static Future<void> _showRelational(BuildContext context) async =>
      showDialog<AlertDialog>(
        context: context,
        builder: (context) => AlertDialog(
          content: const Text(
            Strings.GPS_PMS_RELATIONAL,
          ),
          actions: <Widget>[
            FlatButton(
              onPressed: () async => Navigator.pop(context),
              child: Text(
                Strings.OK,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: Styles.FONT_SHINGO,
                    color: Theme.of(context).accentColor),
              ),
            )
          ],
        ),
      );

  static Future<void> _notifyGpsServiceIsOff(BuildContext context) async =>
      showDialog<AlertDialog>(
        context: context,
        builder: (context) => AlertDialog(
          content: const Text(
            Strings.GPS_SERVICE_RELATIONAL,
          ),
          actions: <Widget>[
            FlatButton(
              onPressed: () async => Navigator.pop(context),
              child: Text(
                Strings.OK,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: Styles.FONT_SHINGO,
                    color: Theme.of(context).accentColor),
              ),
            )
          ],
        ),
      );
}
