import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoWidget extends StatefulWidget {
  final VideoWidgetModel  videoWidgetModel;
VideoWidget({required this.videoWidgetModel});

  @override
  _VideoWidgetState createState() => _VideoWidgetState();
}

class _VideoWidgetState extends State<VideoWidget> {
  VideoPlayerController? _controller;
  Future<void>? _initializeVideoPlayerFuture;

  @override
  void initState() {
    _controller = VideoPlayerController.network(
        widget.videoWidgetModel.urlVideo );
    //_controller = VideoPlayerController.asset("videos/sample_video.mp4");
    _initializeVideoPlayerFuture = _controller?.initialize();
    _controller?.setLooping(true);
    _controller?.setVolume(1.0);
    _controller?.play();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Container(
        //   height: MediaQuery.of(context).size.height / 1.62,
        //   width: MediaQuery.of(context).size.width / 2.12,
        //   color: Color(0xFFBBDEFB),
        //   child: Column(
        //     children: [
        //       Container(
        //         padding: EdgeInsets.symmetric(horizontal: 25, vertical: 18),
        //         color: Color(0xFF003C8F),
        //         width: MediaQuery.of(context).size.width,
        //         height: 64,
        //         child: Row(
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           crossAxisAlignment: CrossAxisAlignment.center,
        //           children: [
        //             Expanded(
        //                 child: Text(
        //               'data',
        //               style: TextStyle(
        //                   fontSize: 26,
        //                   color: Colors.white,
        //                   fontFamily: "Roboto",
        //                   fontWeight: FontWeight.w700),
        //             )),
        //             Icon(
        //               Icons.mic,
        //               size: 33,
        //             ),
        //             Icon(
        //               Icons.fullscreen,
        //               size: 33,
        //             ),
        //           ],
        //         ),
        //       ),
        //       FutureBuilder(
        //         future: _initializeVideoPlayerFuture,
        //         builder: (context, snapshot) {
        //           if (snapshot.connectionState == ConnectionState.done) {
        //             return Center(
        //               child: AspectRatio(
        //                 aspectRatio: _controller!.value.aspectRatio,
        //                 child: VideoPlayer(_controller!),
        //               ),
        //             );
        //           } else {
        //             return Center(
        //               child: CircularProgressIndicator(),
        //             );
        //           }
        //         },
        //       ),
        //
        //
        //     ],
        //   ),
        // ),
        SizedBox(
          height: 500,
          width: 500,
          child: Container(
            height: 500,
            width: 1000,
            color: Color(0xFFBBDEFB),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 18),
                  color: Color(0xFF003C8F),
                  width: MediaQuery.of(context).size.width,
                  height: 64,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                          child: Text(
                            'data',
                            style: TextStyle(
                                fontSize: 26,
                                color: Colors.white,
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.w700),
                          )),
                      Icon(
                        Icons.mic,
                        size: 33,
                      ),
                      Icon(
                        Icons.fullscreen,
                        size: 33,
                      ),
                    ],
                  ),
                ),
                FutureBuilder(
                  future: _initializeVideoPlayerFuture,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      return Center(
                        child: AspectRatio(
                          aspectRatio: _controller!.value.aspectRatio,
                          child: VideoPlayer(_controller!),
                        ),
                      );
                    } else {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  },
                ),


              ],
            ),
          ),
        ),
      ],
    );
  }
}

class VideoWidgetModel {
  String urlVideo;

VideoWidgetModel({required this.urlVideo});


}
