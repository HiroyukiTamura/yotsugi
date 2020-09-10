import 'dart:async';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:istsumuso/strings.dart';
import 'package:istsumuso/styles.dart';
import 'package:istsumuso/util.dart';

class ScreenGoogleMapMain extends StatefulWidget {
  const ScreenGoogleMapMain();

  @override
  State<ScreenGoogleMapMain> createState() => _ScreenGoogleMapState();
}

class _ScreenGoogleMapState extends State<ScreenGoogleMapMain> {
  _ScreenGoogleMapState()
      : _googlePlex = const CameraPosition(
          target: _latLng, //四ツ木の座標
          zoom: _ZOOM,
        );

  static const double _ZOOM = 15;

  static const _latLng = LatLng(35.730461, 139.841722);

  Completer<GoogleMapController> _controller;

  final CameraPosition _googlePlex;

  @override
  void initState() {
    super.initState();
    _controller = Completer<GoogleMapController>();
  }

  @override
  Widget build(BuildContext context) {
    _loadMapStyle(context).then((value) {
      setState(() {});
    });

    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () => _onTapGps(context),
          child: const Icon(Icons.gps_fixed),
        ),
        body: FutureBuilder<_Data>(
          future: _loadMapStyle(context),
          builder: (context, snapshot) {
            if (!snapshot.hasData)
              return const SizedBox();

            debugPrint(snapshot.data.bd.toJson().toString());

            return Stack(
              children: [
                GoogleMap(
                  myLocationButtonEnabled: false,
                  zoomControlsEnabled: false,
                  compassEnabled: true,
                  onMapCreated: (controller) {
                    controller.setMapStyle(snapshot.data.style);
                    _controller.complete(controller);
                  },
                  initialCameraPosition: _googlePlex,
                  markers: <Marker>{
                    Marker(
                      position: _latLng,
                      markerId: MarkerId('spot'),
                      icon: snapshot.data.bd,
                    )
                  },
                ),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: RawMaterialButton(
                      constraints: const BoxConstraints(minWidth: 36, minHeight: 36),
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
          }
        ));
  }

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
      if (newPmsStatus != PermissionStatus.granted && !kIsWeb) {
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

  Future<_Data> _loadMapStyle(BuildContext context) async {
    final mapStyle = await rootBundle.loadString('assets/map_style.json');
    BitmapDescriptor bd;
    if (kIsWeb) {
      final conf = createLocalImageConfiguration(context, size: const Size.square(48));
      bd = await BitmapDescriptor.fromAssetImage(conf, 'assets/maps_flags.png');
    } else {
      final Uint8List markerIcon = await _getBytesFromAsset('maps_flags.png', 64);
      bd = BitmapDescriptor.fromBytes(markerIcon);
    }

    return _Data(mapStyle, bd);
  }

  ///@see https://stackoverflow.com/a/56534916
  static Future<Uint8List> _getBytesFromAsset(String path, int width) async {
    final data = await rootBundle.load(path);
    final codec = await ui.instantiateImageCodec(data.buffer.asUint8List(),
        targetWidth: width);
    final fi = await codec.getNextFrame();
    final byteData = await fi.image.toByteData(format: ui.ImageByteFormat.png);
    return byteData.buffer.asUint8List();
  }

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

class _Data {
  _Data(this.style, this.bd);

  final String style;
  final BitmapDescriptor bd;
}