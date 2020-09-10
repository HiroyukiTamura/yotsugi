import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yotsugi/strings.dart';
import 'package:yotsugi/styles.dart';

///画面左上で戻るボタンを提供する
class BackBtn extends StatelessWidget {
  const BackBtn({
    Key key,
    @required this.btnFillColor,
    @required this.iconColor,
    @required this.onTap,
  }) : super(key: key);

  final Color btnFillColor;
  final Color iconColor;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(8),
        child: RawMaterialButton(
          constraints: const BoxConstraints(minWidth: 36, minHeight: 36),
          onPressed: onTap,
          fillColor: btnFillColor,
          padding: const EdgeInsets.all(6),
          shape: const CircleBorder(),
          elevation: 0,
          child: Icon(
            Icons.arrow_back,
            size: 24,
            color: iconColor,
          ),
        ),
      );
}

class ErrRobotWidget extends StatelessWidget {

  const ErrRobotWidget({this.errMsg = Strings.SNACK_ERR, this.errMsg2nd}): super();

  final String errMsg;
  final String errMsg2nd;

  static const _IMG_URL = 'assets/err_robot.svg';
  static const double _SIZE = 72;

  @override
  Widget build(BuildContext context) {
    List<Widget> children = <Widget>[
      if (kIsWeb)
        CachedNetworkImage(
          imageUrl: _IMG_URL,
          height: _SIZE,
          width: _SIZE,
          color: Styles.ACCENT_COLOR,
        )
      else
        SvgPicture.asset(
          _IMG_URL,
          height: _SIZE,
          width: _SIZE,
          semanticsLabel: Strings.SNACK_ERR,
          color: Styles.ACCENT_COLOR,
        ),
      const SizedBox(
        height: 24,
      ),
      _errorText(text: errMsg),
    ];

    if (errMsg2nd != null) {
      children.add(Padding(
        padding: const EdgeInsets.only(top: 12),
        child: _errorText(text: errMsg2nd),
      ));
    }

    return Container(
      padding: const EdgeInsets.all(16),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: children,
      ),
    );
  }

  static Text _errorText({@required String text}) => Text(
    text,
    style: const TextStyle(
        fontFamily: Styles.FONT_SHINGO,
        fontSize: 18,
        color: Styles.ACCENT_COLOR),
  );
}
