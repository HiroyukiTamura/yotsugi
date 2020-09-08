import 'package:flutter/foundation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:yotsugi/root_page.dart';
import 'package:yotsugi/screen_main/comment.dart';
import 'package:yotsugi/screen_main/corner_label.dart';
import 'package:yotsugi/screen_main/label_fadein.dart';
import 'package:yotsugi/screen_main/non_glow_behavior.dart';
import 'package:yotsugi/screen_main/theme_text.dart';
import 'package:yotsugi/screen_main/thin_scrollbar.dart';
import 'package:intl/intl.dart';
import 'package:yotsugi/statics.dart';
import 'package:yotsugi/strings.dart';
import 'package:share/share.dart';

class ScreenMain extends StatefulWidget {
  const ScreenMain({Key key}) : super(key: key);

  @override
  _ScreenMainState createState() => _ScreenMainState();
}

class _ScreenMainState extends State<ScreenMain> with TickerProviderStateMixin {
  static const int _WIDTH = 1920;
  static const int _HEIGHT = 1080;

  AnimationController _animationController;
  Animation<Offset> _animation;

  AnimationController _fadeInAcLeft;
  AnimationController _fadeInAcRight;
  final ValueNotifier<String> _dateLabelVn = ValueNotifier('2020:09:03:00:00');
  final ValueNotifier<double> _themeOpacity = ValueNotifier(1);
  static const double _BTM_PADDING = 48;

  ScrollController _sc;
  ScrollController _barSc;

  @override
  void initState() {
    super.initState();

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

    _fadeInAcLeft = createAcForMiddleLabel();
    _fadeInAcRight = createAcForMiddleLabel();

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

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
    _fadeInAcLeft.dispose();
    _fadeInAcRight.dispose();
    _sc.dispose();
    _barSc.dispose();
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
                  _Header(
                    animation: _animation,
                    headerH: headerH,
                    dateLabelVn: _dateLabelVn,
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
                                        string: '「元気ハウスチャンネルのネタに映像撮りにいかなきゃ。」');
                                  case 1:
                                    return const Comment(
                                        string: '「笑それマジでたすかるんだけど～」');
                                  case 2:
                                    return const Comment(string: '「そざいあるよ」');
                                  case 3:
                                    return Padding(
                                      padding: const EdgeInsets.only(
                                          top: 64, bottom: 48),
                                      child: SizedBox(
                                        height: 268,
                                        width: 268,
                                        child: Image.asset(
                                          'img/sample_img.jpg',
                                          errorBuilder: (_, __, stackTrace) {
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
                        Align(
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
                        ValueListenableBuilder<double>(
                            valueListenable: _themeOpacity,
                            builder: (__, opacity, _) => Opacity(
                                opacity: opacity,
                                child: ThemeText(contentH: contentH))),
                        LabelFadeIn(
                          string: Strings.WORKSHEET,
                          alignment: Alignment.topLeft,
                          animationController: _fadeInAcLeft,
                          onTap: () => Navigator.of(context)
                              .pushNamed(RootPage.ROUTE_ROAD_MAP),
                        ),
                        LabelFadeIn(
                          string: Strings.ABOUT,
                          alignment: Alignment.topRight,
                          animationController: _fadeInAcRight,
                          onTap: () => Navigator.of(context)
                              .pushNamed(RootPage.ROUTE_ABOUT),
                        ),
                        ThinScrollbar(sc: _barSc),
                        CornerLabel(
                          alignment: Alignment.bottomLeft,
                          curve: const Interval(1 / 3, 1,
                              curve: Curves.easeInOutSine),
                          tween: _btmTween,
                          duration: const Duration(milliseconds: 1500),
                          string: Strings.MAP,
                          onTap: () => Navigator.of(context)
                              .pushNamed(RootPage.ROUTE_GOOGLE_MAP),
                        ),
                        CornerLabel(
                          alignment: Alignment.bottomCenter,
                          curve: const Interval(3 / 7, 1,
                              curve: Curves.easeInOutSine),
                          tween: _btmTween,
                          duration: const Duration(milliseconds: 1750),
                          string: Strings.POST,
                          onTap: () => Navigator.of(context)
                              .pushNamed(RootPage.ROUTE_GOOGLE_MAP), //todo ここ
                        ),
                        CornerLabel(
                          alignment: Alignment.bottomRight,
                          curve: const Interval(.5, 1,
                              curve: Curves.easeInOutSine),
                          tween: _btmTween,
                          duration: const Duration(seconds: 2),
                          string: Strings.BLUEPRINT,
                          onTap: () => Navigator.of(context)
                              .pushNamed(RootPage.ROUTE_LAYOUT),
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

  AnimationController createAcForMiddleLabel() => AnimationController(
      duration: const Duration(milliseconds: 2500), vsync: this)
    ..forward();
}

class _Header extends StatelessWidget {
  const _Header({
    Key key,
    @required this.animation,
    @required this.headerH,
    @required this.dateLabelVn,
  }) : super(key: key);

  final Animation<Offset> animation;
  final double headerH;
  final ValueNotifier<String> dateLabelVn;

  Tween<Offset> get _topTween => Tween<Offset>(
        begin: const Offset(0, -2),
        end: const Offset(0, 0),
      );

  @override
  Widget build(BuildContext context) => SizedBox(
        height: headerH,
        width: double.infinity,
        child: Stack(
          children: [
            Image.asset('img/header.png'),
            SlideTransition(
              position: animation,
              child: Container(
                height: headerH,
                width: double.infinity,
                color: Colors.white,
              ),
            ),
            Stack(
              children: [
                CornerLabel(
                  alignment: Alignment.topLeft,
                  curve: Curves.easeInOutSine,
                  tween: _topTween,
                  duration: const Duration(seconds: 1),
                  string: Strings.SHARE,
                  fontSize: 14,
                  onTap: () => Share.share(Statics.HP_URL), //todo ここ
                ),
                ValueListenableBuilder<String>(
                    valueListenable: dateLabelVn,
                    builder: (_, value, child) => CornerLabel(
                          alignment: Alignment.topRight,
                          curve: const Interval(1 / 3, 1,
                              curve: Curves.easeInOutSine),
                          tween: _topTween,
                          fontSize: 14,
                          duration: const Duration(
                            milliseconds: 1500,
                          ),
                          string: value,
                        ))
              ],
            ),
          ],
        ),
      );
}
