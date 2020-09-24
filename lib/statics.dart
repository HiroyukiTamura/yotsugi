import 'package:flutter/cupertino.dart';

@immutable
class Statics {
  static const HP_URL = 'https://yotsugi-78140.web.app';
  static const API_KEY = 'AIzaSyBQGI_sqT7rl4zht5Eb-lKuFmQeku0YFY4';
  static const GITHUB_URL = 'https://github.com/HiroyukTamura/yotsugi';
  static const TWITTER_URL = 'http://twitter.com/share?$HP_URL';
  static const FACEBOOK_URL = 'https://www.facebook.com/dialog/share?href=$HP_URL&app_id=354380272272765';
  static const LINE_URL = 'https://social-plugins.line.me/lineit/share?url=$HP_URL';
  static const PLAY_STORE_URL = 'https://play.google.com/store/apps/details?id=com.cks.yotsugi';
  static const APP_STORE_URL = 'https://apps.apple.com/jp/app/id1531367636';

  static const int MAX_VIDEO_LEN_SEC = 9;
  static const PASSWORD = 'yotsugi';
}

@immutable
class BreakPoints {
  static const W720 = 720;
  static const W480 = 480;
}
