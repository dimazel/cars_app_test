import 'package:cars_test_app/screens/live_video_screen/video_widget.dart';

import 'package:flutter/material.dart';

class LiveVideoScreen extends StatefulWidget {
  const LiveVideoScreen({Key? key}) : super(key: key);

  @override
  _LiveVideoScreenState createState() => _LiveVideoScreenState();
}

class _LiveVideoScreenState extends State<LiveVideoScreen> {
  @override
  Widget build(BuildContext context){
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFEEFFFF),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            VideoWidget(videoWidgetModel: VideoWidgetModel(urlVideo: 'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'),),
            // VideoWidget(videoWidgetModel: VideoWidgetModel(urlVideo: 'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'),),
          ],
        ),
      ),
    ));
  }
}
