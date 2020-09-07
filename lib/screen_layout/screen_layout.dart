import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:video_player/video_player.dart';
import 'package:yotsugi/common/widget.dart';

class ScreenLayout extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ScreenLayoutState();
}

class _ScreenLayoutState extends State<ScreenLayout> {
  Orientation _initialOrientation;

  static const _portOrientations = [
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ];

  static const _horizontalOrientations = [
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _forceDeviceRotation());
  }

  @override
  void dispose() {
    super.dispose();
    final orientations = _initialOrientation == Orientation.landscape
        ? _horizontalOrientations
        : _portOrientations;
    SystemChrome.setPreferredOrientations(orientations);
  }

  @override
  Widget build(BuildContext context) {
    _initialOrientation ??= MediaQuery.of(context).orientation;
    return Scaffold(
      backgroundColor: Colors.black54,
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox.expand(
              child: Image.asset('img/shadow.png'),
            ),
            Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.black.withOpacity(.4),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              alignment: Alignment.center,
              child: SvgPicture.asset(
                'img/layout.svg',
                color: Colors.white,
              ),
            ),
            BackBtn(
              btnFillColor: Theme.of(context).primaryColor,
              iconColor: Colors.black,
              onTap: () => Navigator.of(context).pop(),
            ),
            const Padding(
              padding: EdgeInsets.all(8),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  '2020:09:07:13:10',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  /// todo iOS対応
  Future<void> _forceDeviceRotation() async {
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
  }
}
