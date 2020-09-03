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
    target: LatLng(35.730461, 139.841722),
    zoom: _ZOOM,
  );

  static const double _ZOOM = 15;

  final Completer<GoogleMapController> _controller = Completer<GoogleMapController>();

  final CameraPosition _googlePlex;

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: const Text(Strings.MAP),
    ),
    body: GoogleMap(
      initialCameraPosition: _googlePlex,
      myLocationButtonEnabled: false,
      zoomControlsEnabled: false,
      compassEnabled: true,
      onMapCreated: (controller) => _controller.complete(controller),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () => _onTapGps(context),
      tooltip: Strings.GPS,
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
    if (pmsStatus == PermissionStatus.denied || pmsStatus == PermissionStatus.deniedForever) {
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

  static Future<void> _showRelational(BuildContext context) async => showDialog<AlertDialog>(
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


  static Future<void> _notifyGpsServiceIsOff(BuildContext context) async => showDialog<AlertDialog>(
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
