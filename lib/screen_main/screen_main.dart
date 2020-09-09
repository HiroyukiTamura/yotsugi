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
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:yotsugi/statics.dart';
import 'package:yotsugi/strings.dart';
import 'package:share/share.dart';
import 'package:yotsugi/util.dart';

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
  ValueNotifier<double> _themeOpacity;

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

    _sc = ScrollController()
      ..addListener(() async {
        double ratio = _sc.position.pixels / _sc.position.maxScrollExtent;
        double ratio2 = 1 - ratio * 3;
        if (ratio2.isNegative)
          ratio2 = 0;
        if (ratio2 > 1)
          ratio2 = 1;
        _themeOpacity.value = ratio2;
      });

    _barSc = ScrollController();
    _themeOpacity = ValueNotifier(1);
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

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final is1Pain = mediaQuery.size.height > BreakPoints.W480;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: is1Pain ? _onePainBody(mediaQuery) : _twoPainBody(mediaQuery),
      ),
    );
  }

  AnimationController createAcForMiddleLabel() => AnimationController(
      duration: const Duration(milliseconds: 2500), vsync: this)
    ..forward();

  Widget _onePainBody(MediaQueryData mediaQuery) {
    final headerH = mediaQuery.size.width * (_HEIGHT / _WIDTH);
    final contentH = mediaQuery.size.height -
        (headerH + mediaQuery.padding.top + mediaQuery.padding.bottom);

    return Stack(
      children: [
        Column(
          children: <Widget>[
            _Header(
              animation: _animation,
              headerH: headerH,
              topRightAnmDuration: const Duration(seconds: 1),
            ),
            Expanded(
              child: _Content(
                height: contentH,
                sc: _sc,
                fadeInAcLeft: _fadeInAcLeft,
                fadeInAcRight: _fadeInAcRight,
                themeOpacity: _themeOpacity,
                is2pain: false,
              ),
            )
          ],
        ),
      ],
    );
  }

  Widget _twoPainBody(MediaQueryData mediaQuery) {
    return Row(
          children: [
            Expanded(
              child: _Header(
                headerH: mediaQuery.size.height,
                animation: _animation,
                topRightAnmDuration: const Duration(milliseconds: 1500),
              ),
            ),
            Expanded(
              child: _Content(
                is2pain: true,
                height: mediaQuery.size.height,
                sc: _sc,
                fadeInAcLeft: _fadeInAcLeft,
                fadeInAcRight: _fadeInAcRight,
                themeOpacity: _themeOpacity,
              ),
            ),
          ],
        );
  }
}

class _Header extends StatelessWidget {
  const _Header({
    Key key,
    @required this.animation,
    @required this.headerH,
    @required this.topRightAnmDuration,
  }) : super(key: key);

  final Animation<Offset> animation;
  final double headerH;
  final Duration topRightAnmDuration;

  static Tween<Offset> getTopTween() {
    return Tween<Offset>(
      begin: const Offset(0, -2),
      end: const Offset(0, 0),
    );
  }

  @override
  Widget build(BuildContext context) => SizedBox(
        height: headerH,
        width: double.infinity,
        child: Stack(
          children: [
            SizedBox.expand(
              child: Image.asset(
                'img/header.png',
                fit: BoxFit.cover,
              ),
            ),
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
                  tween: getTopTween(),
                  duration: const Duration(seconds: 1),
                  string: Strings.SHARE,
                  fontSize: 12,
                  onTap: () => Share.share(Statics.HP_URL), //todo ここ
                ),
                CornerLabel(
                  alignment: Alignment.topRight,
                  curve: Curves.easeInOutSine,
                  tween: getTopTween(),
                  duration: topRightAnmDuration,
                  string: Strings.POST,
                  fontSize: 12,
                  onTap: () => Navigator.of(context).pushNamed(RootPage.ROUTE_POST),
                ),
              ],
            ),
          ],
        ),
      );
}

class _Content extends StatelessWidget {
  const _Content({
    Key key,
    @required this.is2pain,
    @required this.height,
    @required this.sc,
    @required this.fadeInAcLeft,
    @required this.fadeInAcRight,
    @required this.themeOpacity,
  }) : super(key: key);

  static const double _BTM_PADDING = 48;

  final bool is2pain;
  final double height;
  final ScrollController sc;
  final AnimationController fadeInAcLeft;
  final AnimationController fadeInAcRight;
  final ValueNotifier<double> themeOpacity;

  @override
  Widget build(BuildContext context) {
    final _btmTween = Tween<Offset>(
      begin: const Offset(0, 2),
      end: const Offset(0, 0),
    );

    return Stack(
      children: [
        FutureBuilder<QuerySnapshot>(
            future: FirebaseFirestore.instance
                .collection('log')
                .orderBy('createdAt')
                .get(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                Util.reportCrash(snapshot.error);
                return const SizedBox();
              }

              if (!snapshot.hasData)
                return const SizedBox();

              int count = 0;
              List<int> indexList = [];
              snapshot.data.docs.forEach((doc) {
                indexList.add(count);
                final comment = doc.get('comments') as String;
                count += comment.split('\\n').length;
                count += 2;//日付と写真分
              });
              return ScrollConfiguration(
                behavior: NonGlowBehavior(),
                child: ListView.builder(
                  controller: sc,
                  itemCount: count,
                  padding: EdgeInsets.only(top: height, bottom: _BTM_PADDING),
                  itemBuilder: (context, i) {
                    int pos = indexList.indexWhere((element) => element > i)-1;
                    //pos == -2 => 最後のアイテム
                    int offset = 0;
                    if (pos == -2)
                      offset = indexList.last;
                    else if (pos >= 0)
                      offset = indexList[pos];

                    QueryDocumentSnapshot snap = pos == -2 ? snapshot.data.docs.last : snapshot.data.docs[pos];
                    final indexInItem = i - offset;
                    final comment = snap.get('comments') as String;
                    final comments = comment.split('\\n');
                    final diff = comments.length - indexInItem;
                    if (diff == -1) {
                      final date = (snap.get('createdAt') as Timestamp).toDate();
                      return DateText(string: DateFormat('yyyy:MM:dd:HH:mm').format(date));
                    } else if (diff == 0) {
                      final imgNames = snap.get('imgNames') as List<dynamic>;
                      return Images(fileList: imgNames);
                    } else
                      return Comment(string: comments[indexInItem]);
                  },
                ),
              );
            },),
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
            valueListenable: themeOpacity,
            builder: (__, opacity, _) => Opacity(
                opacity: opacity, child: ThemeText(contentH: height))),
        _leftTopLabel(context),
        _rightTopLabel(context),
        CornerLabel(
          alignment: Alignment.bottomLeft,
          curve: const Interval(1 / 3, 1, curve: Curves.easeInOutSine),
          tween: _btmTween,
          duration: const Duration(milliseconds: 1500),
          string: Strings.MAP,
          onTap: () =>
              Navigator.of(context).pushNamed(RootPage.ROUTE_GOOGLE_MAP),
        ),
        CornerLabel(
          alignment: Alignment.bottomRight,
          curve: const Interval(.5, 1, curve: Curves.easeInOutSine),
          tween: _btmTween,
          duration: const Duration(seconds: 2),
          string: Strings.BLUEPRINT,
          onTap: () => Navigator.of(context).pushNamed(RootPage.ROUTE_LAYOUT),
        ),
      ],
    );
  }

  Widget _leftTopLabel(BuildContext context) {
    Future<void> onTap() async => Navigator.of(context).pushNamed(RootPage.ROUTE_ROAD_MAP);

    return is2pain
        ? CornerLabel(
            alignment: Alignment.topLeft,
            curve: Curves.easeInOutSine,
            tween: _Header.getTopTween(),
            duration: const Duration(milliseconds: 1500),
            string: Strings.WORKSHEET,
            fontSize: 12,
            onTap: () => onTap(),
          )
        : LabelFadeIn(
            string: Strings.WORKSHEET,
            alignment: Alignment.topLeft,
            animationController: fadeInAcLeft,
            onTap: () => onTap(),
          );
  }


  Widget _rightTopLabel(BuildContext context) {
    Future<void> onTap() async => Navigator.of(context).pushNamed(RootPage.ROUTE_ABOUT);

    return is2pain
        ? CornerLabel(
            alignment: Alignment.topRight,
            curve: Curves.easeInOutSine,
            tween: _Header.getTopTween(),
            duration: const Duration(seconds: 2),
            string: Strings.ABOUT,
            fontSize: 12,
            onTap: () => onTap(),
          )
        : LabelFadeIn(
            string: Strings.ABOUT,
            alignment: Alignment.topRight,
            animationController: fadeInAcRight,
            onTap: () => onTap(),
          );
  }
}
