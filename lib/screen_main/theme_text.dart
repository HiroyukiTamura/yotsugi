import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:itsumuso/strings.dart';
import 'package:itsumuso/styles.dart';

class ThemeText extends StatelessWidget {
  const ThemeText({Key? key, required this.contentH}) : super(key: key);

  final double contentH;

  @override
  Widget build(BuildContext context) => SizedBox(
        height: contentH,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                Strings.HOUSE_NAME,
                style: TextStyle(
                  fontFamily: Styles.FONT_SHINGO,
                  color: Colors.black54,
                  letterSpacing: 4,
                  fontSize: 32,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                Strings.THEME_SUB,
                style: TextStyle(
                  fontFamily: Styles.FONT_SHINGO,
                  color: Colors.black87,
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Icon(
                Icons.keyboard_arrow_down,
                color: Colors.black45,
              )
            ],
          ),
        ),
      );
}
