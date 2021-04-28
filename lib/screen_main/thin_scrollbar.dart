import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ThinScrollbar extends StatelessWidget {

  const ThinScrollbar({Key key, this.sc}) : super(key: key);

  static const double HEIGHT = 96;

  final ScrollController sc;

  @override
  Widget build(BuildContext context) => Visibility(
    visible: false,
    child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          height: HEIGHT,
          width: 2,
          color: Colors.black87,
          alignment: Alignment.centerRight,
          child: SingleChildScrollView(
            controller: sc,
            physics: const NeverScrollableScrollPhysics(),
            child: SizedBox(
              height: 24,
              child: Container(
                color: Colors.white,
                // child: Text(
                //   Strings.SCROLL,
                //   style: TextStyle(
                //     fontFamily: Styles.FONT_SHINGO,
                //     fontSize: 12,
                //   ),
                // ),
              ),
            ),
          ),
        ),
      ),
  );
}
