import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:yotsugi/strings.dart';
import 'package:yotsugi/styles.dart';

class ThemeText extends StatelessWidget {

  const ThemeText({Key key, this.contentH}) : super(key: key);

  final double contentH;

  @override
  Widget build(BuildContext context) => SizedBox(
      height: contentH,
      child: Center(
        child: Column(
          mainAxisAlignment:
          MainAxisAlignment.center,
          children: const [
            Text(
              Strings.HOUSE_NAME,
              style: TextStyle(
                fontFamily: Styles.FONT_SHINGO,
                color: Colors.black54,
                letterSpacing: 6,
                fontSize: 32,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'Tokyo, Katsushika',
              style: TextStyle(
                fontFamily: Styles.FONT_SHINGO,
                color: Colors.black87,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
}