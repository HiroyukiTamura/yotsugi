import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
