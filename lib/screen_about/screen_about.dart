import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yotsugi/strings.dart';
import 'package:yotsugi/styles.dart';

class ScreenAbout extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ScreenAboutState();
}

class _ScreenAboutState extends State<ScreenAbout> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SizedBox.expand(
              child: FittedBox(
                fit: BoxFit.fill,
                child: Image.asset(
                  'img/shadow.png',
                ),
              ),
            ),
            Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.black.withOpacity(.2),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 60, bottom: 60),
                    alignment: Alignment.center,
                    child: const Text(
                      Strings.ABOUT_TITLE,
                      style: TextStyle(
                          fontSize: 40,
                          fontFamily: Styles.FONT_SHINGO,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      Strings.ABOUT_INTRO0,
                      style: TextStyle(
                          height: 1.2,
                          fontSize: 18,
                          fontFamily: Styles.FONT_SANS,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      Strings.ABOUT_INTRO1,
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: Styles.FONT_SANS,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          height: 1.2),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      Strings.ABOUT_INTRO_REF,
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: Styles.FONT_SANS,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                  const Spacer(),
                  Text(
                    Strings.ABOUT_H_FACILITY,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8,),
                  Text(
                    Strings.ABOUT_FACILITY,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8,),
                  Text(
                    Strings.ABOUT_H_LOCATION,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8,),
                  Text(
                    Strings.ABOUT_DISTANCE_STATION,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                  const Center(
                    child: Text(
                      Strings.ABOUT_DISTANCE_GROCERY,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Spacer(),
                  const Center(
                    child: Text(
                      Strings.HOUSE_NAME_JA,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Center(
                    child: Text(
                      Strings.ADDRESS,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
            const BackButton(
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
