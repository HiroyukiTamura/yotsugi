import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ShareWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Center(
        child: Row(
          children: const [
            _SnsButton(iconData: FontAwesomeIcons.twitter),
            _SnsButton(iconData: FontAwesomeIcons.line,),
            _SnsButton(iconData: FontAwesomeIcons.facebook,)
          ],
        ),
      );
}

class _SnsButton extends StatelessWidget {

  const _SnsButton({Key? key, required this.iconData}) : super(key: key);

  final IconData iconData;


  @override
  Widget build(BuildContext context) => RawMaterialButton(
        constraints: const BoxConstraints(minWidth: 36, minHeight: 36),
        onPressed: () => Navigator.of(context).pop(),
        fillColor: Colors.white,
        padding: const EdgeInsets.all(6),
        shape: const CircleBorder(),
        elevation: 0,
        child: FaIcon(
          iconData,
          size: 24,
        ),
      );
}
