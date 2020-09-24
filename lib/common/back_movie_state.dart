import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

@protected
abstract class BackMovieState<T extends StatefulWidget> extends State<T> {
  @protected
  Future<void> playVideoFuture;
  @protected
  VideoPlayerController vpc;

  @override
  void initState() {
    super.initState();
    vpc = VideoPlayerController.asset('assets/roadmap_bg.mp4');
    playVideoFuture = _playVideo();
  }

  @override
  void dispose() {
    super.dispose();
    vpc.dispose();
  }

  Future<void> _playVideo() async {
    await vpc.initialize();
    await vpc.setLooping(true);
    await vpc.setVolume(0);
    await vpc.play();
  }

  @protected
  List<Widget> backGround({double videoShadowOpacity = 0}) => kIsWeb
      ? [
          FutureBuilder<void>(
              future: playVideoFuture,
              builder: (context, snapshot) => vpc.value.initialized
                  ? Stack(
                      children: [
                        SizedBox.expand(
                          child: FittedBox(
                            fit: BoxFit.cover,
                            child: SizedBox(
                              width: vpc.value.size?.width ?? 0,
                              height: vpc.value.size?.height ?? 0,
                              child: VideoPlayer(vpc),
                            ),
                          ),
                        ),
                        if (videoShadowOpacity != 0)
                          Container(
                            height: double.infinity,
                            width: double.infinity,
                            color: Colors.black.withOpacity(videoShadowOpacity),
                          )
                      ],
                    )
                  : const SizedBox()),
        ]
      : [
          SizedBox.expand(
            child: FittedBox(
              fit: BoxFit.fill,
              child: Image.asset(
                'assets/shadow.png',
              ),
            ),
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.black.withOpacity(.2),
          )
        ];
}
