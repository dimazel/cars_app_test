import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class FullScreenVideo extends StatefulWidget {
  const FullScreenVideo({Key? key}) : super(key: key);

  @override
  _FullScreenVideoState createState() => _FullScreenVideoState();
}

class _FullScreenVideoState extends State<FullScreenVideo> {
  VideoPlayerController? _controller;
  Future<void>? _initializeVideoPlayerFuture;
  @override
  void initState() {
    super.initState();
    _controller =
    VideoPlayerController.asset("assets/video/home_background.mp4")
      ..initialize().then((value) => {setState(() {})});
    _controller!.setLooping(true);
    _controller!.setVolume(0.0);
    _controller!.play();
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: FittedBox(
            fit: BoxFit.cover,
            child: SizedBox(
              width: _controller!.value.size.width,
              height: _controller!.value.size.height,
              child: VideoPlayer(_controller!),
            ),
          ),
        ),
        //FURTHER IMPLEMENTATION
      ],
    );
  }
}
