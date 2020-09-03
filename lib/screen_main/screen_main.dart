import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:video_player/video_player.dart';
import 'package:yotsugi/screen_main/comment.dart';
import 'package:yotsugi/screen_main/corner_label.dart';
import 'package:yotsugi/screen_main/label_fadein.dart';
import 'package:yotsugi/screen_main/non_glow_behavior.dart';
import 'package:yotsugi/screen_main/theme_text.dart';
import 'package:yotsugi/screen_main/thin_scrollbar.dart';
import 'package:intl/intl.dart';
import 'package:yotsugi/strings.dart';

class ScreenMain extends StatefulWidget {
  const ScreenMain({Key key}) : super(key: key);

  @override
  _ScreenMainState createState() => _ScreenMainState();
}

class _ScreenMainState extends State<ScreenMain> with TickerProviderStateMixin {
  VideoPlayerController _controller;

  static const int _WIDTH = 1920;
  static const int _HEIGHT = 1080;

  AnimationController _animationController;
  Animation<Offset> _animation;

  AnimationController _fadeInAc;
  final ValueNotifier<String> _dateLabelVn = ValueNotifier('2020:09:03:00:00');
  final ValueNotifier<double> _themeOpacity = ValueNotifier(1);
  static const double _BTM_PADDING = 48;

  ScrollController _sc;
  ScrollController _barSc;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('video/header.mp4')
      ..initialize().then((_) {
        setState(() {});
      });
    _animationController = AnimationController(
        duration: const Duration(milliseconds: 2500), vsync: this)
      ..forward();
    _animation = Tween<Offset>(
      begin: const Offset(0, 0),
      end: const Offset(1, 0),
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: const Interval(.8, 1, curve: Curves.easeInOutSine),
    ));

    _fadeInAc = AnimationController(
        duration: const Duration(milliseconds: 2500), vsync: this)
      ..forward();

    final date = DateTime.now();
    final todayEpochMicro =
        DateTime(date.year, date.month, date.day).microsecondsSinceEpoch;
    _sc = ScrollController()
      ..addListener(() async {
        double ratio = _sc.position.pixels / _sc.position.maxScrollExtent;
        double ratio2 = 1 - ratio * 3;
        if (ratio2.isNegative) ratio2 = 0;
        _themeOpacity.value = ratio2;

        _updateBarPosition(ratio, ratio2);

        double microSec = 24 * 60 * 60 * 1000 * 1000 * ratio;
        final dateTime = DateTime.fromMicrosecondsSinceEpoch(
            todayEpochMicro + microSec.toInt());
        _updateDateStr(dateTime);
        // date.microsecond = microSec.toInt();
        // await _controller.seekTo(Duration(microseconds: (ratio * 9 * 1000 * 1000).toInt()));
      });

    _barSc = ScrollController();

    // WidgetsBinding.instance.addPostFrameCallback((_) {
    // _controller..setLooping(true)
    //   ..play();
    // });
  }

  void _updateDateStr(DateTime dateTime) {
    _dateLabelVn.value = DateFormat('yyyy:MM:dd:HH:mm').format(dateTime);
  }

  void _updateBarPosition(double ratio, double themeOpacity) {
    _barSc.jumpTo(_barSc.offset - ThinScrollbar.HEIGHT * ratio);
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final headerH = mediaQuery.size.width * (_HEIGHT / _WIDTH);
    final contentH = mediaQuery.size.height -
        (headerH + mediaQuery.padding.top + mediaQuery.padding.bottom);

    final _topTween = Tween<Offset>(
      begin: const Offset(0, -2),
      end: const Offset(0, 0),
    );

    final _btmTween = Tween<Offset>(
      begin: const Offset(0, 2),
      end: const Offset(0, 0),
    );

    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Stack(
                children: [
                  Column(
                    children: <Widget>[
                      SizedBox(
                        height: headerH,
                        width: double.infinity,
                        child: Stack(
                          children: [
                            if (_controller.value.initialized)
                              VideoPlayer(_controller),
                            Stack(
                              children: [
                                SlideTransition(
                                  position: _animation,
                                  child: Container(
                                    height: headerH,
                                    width: double.infinity,
                                    color: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(12),
                                  child: Stack(
                                    children: [
                                      CornerLabel(
                                        alignment: Alignment.topLeft,
                                        curve: Curves.easeInOutSine,
                                        tween: _topTween,
                                        duration:
                                        const Duration(seconds: 1),
                                        string: 'Tokyo, Katsushika,',
                                      ),
                                      ValueListenableBuilder<String>(
                                          valueListenable: _dateLabelVn,
                                          builder: (_, value, child) =>
                                              CornerLabel(
                                                alignment:
                                                Alignment.topRight,
                                                curve: const Interval(
                                                    1 / 3, 1,
                                                    curve: Curves
                                                        .easeInOutSine),
                                                tween: _topTween,
                                                duration: const Duration(
                                                  milliseconds: 1500,
                                                ),
                                                string: value,
                                              ))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: contentH,
                        child: Stack(
                          children: [
                            Center(
                              child: ScrollConfiguration(
                                behavior: NonGlowBehavior(),
                                child: ListView.builder(
                                  controller: _sc,
                                  itemCount: 5,
                                  padding: EdgeInsets.only(
                                      right: 16,
                                      left: 16,
                                      top: contentH,
                                      bottom: _BTM_PADDING),
                                  itemBuilder: (context, index) {
                                    switch (index) {
                                      case 0:
                                        return const Comment(
                                            string:
                                            '「元気ハウスチャンネルのネタに映像撮りにいかなきゃ。」');
                                      case 1:
                                        return const Comment(
                                            string: '「笑それマジでたすかるんだけど～」');
                                      case 2:
                                        return const Comment(
                                            string: '「そざいあるよ」');
                                      case 3:
                                        return Padding(
                                          padding: const EdgeInsets.only(
                                              top: 64, bottom: 48),
                                          child: SizedBox(
                                            height: 268,
                                            width: 268,
                                            child: Image.asset(
                                              'img/sample_img.jpg',
                                              errorBuilder:
                                                  (_, __, stackTrace) {
                                                debugPrintStack(
                                                    stackTrace: stackTrace);
                                                return const ColoredBox(
                                                    color: Colors.black);
                                              },
                                            ),
                                          ),
                                        );
                                      case 4:
                                        return const DateText(
                                            string: '2020:09:03:15:45');
                                      default:
                                        return Text('');
                                    }
                                  },
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      stops: const [
                                        0,
                                        .7,
                                        1
                                      ],
                                      colors: [
                                        Colors.white,
                                        Colors.white,
                                        Colors.white.withOpacity(0),
                                      ]),
                                ),
                                height: 48,
                              ),
                            ),
                            IgnorePointer(
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        stops: const [
                                          0,
                                          .3,
                                          1
                                        ],
                                        colors: [
                                          Colors.white.withOpacity(0),
                                          Colors.white,
                                          Colors.white
                                        ]),
                                  ),
                                  height: _BTM_PADDING,
                                ),
                              ),
                            ),
                            ValueListenableBuilder<double>(
                                valueListenable: _themeOpacity,
                                builder: (__, opacity, _) => Opacity(
                                    opacity: opacity,
                                    child: ThemeText(contentH: contentH))),
                            Padding(
                              padding: const EdgeInsets.all(12),
                              child: Stack(
                                children: [
                                  LabelFadeIn(
                                    string: Strings.VIDEO,
                                    alignment: Alignment.topLeft,
                                    animationController: _fadeInAc,
                                  ),
                                  LabelFadeIn(
                                    string: Strings.SHARE,
                                    alignment: Alignment.topRight,
                                    animationController: _fadeInAc,
                                  ),
                                  ThinScrollbar(sc: _barSc),
                                  CornerLabel(
                                    alignment: Alignment.bottomLeft,
                                    curve: const Interval(1 / 3, 1,
                                        curve: Curves.easeInOutSine),
                                    tween: _btmTween,
                                    duration:
                                    const Duration(milliseconds: 1500),
                                    string: Strings.MAP,
                                  ),
                                  CornerLabel(
                                    alignment: Alignment.bottomRight,
                                    curve: const Interval(.5, 1,
                                        curve: Curves.easeInOutSine),
                                    tween: _btmTween,
                                    duration: const Duration(seconds: 2),
                                    string: Strings.BLUEPRINT,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              )),
    );
  }
}