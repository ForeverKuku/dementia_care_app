// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';

// class VideoPlayerWidget extends StatefulWidget {
//   final VideoPlayerController controller;

//   const VideoPlayerWidget({required this.controller});

//   @override
//   State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
// }

// class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
//   @override
//   Widget build(BuildContext context) =>
//       controller != null && controller.value.initialized
//           ? Container(alignment: Alignment.topCenter, child: buildVideo())
//           : Container(
//               height: 200,
//               child: Center(
//                 child: CircularProgressIndicator(),
//               ));
//   Widget buildVideo() => buildVideoPlayer();

// }
