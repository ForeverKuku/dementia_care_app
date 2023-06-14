import 'package:flutter/material.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Thank You For Using Dementiia Care Assistant'),
      ),
      body: const Text(
          ' The Dementia care Assistant app is designed to assist caregivers in providing quality care for individuals with dementia. The app includes features such as medication reminders, activity suggestions, and communication tools to improve the overall quality of life for both the caregiver and patient. Additionally, the app offers resources and support for caregivers who may need assistance or guidance in caring for their loved ones with dementia. '),
    );
  }
}



























// import 'package:dementia_care_app/pages/video_player_widget.dart';
// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';

// class VidoePage extends StatefulWidget {

  
//   @override
//   State<VidoePage> createState() => _VidoePageState();
// }

// class _VidoePageState extends State<VidoePage> {
//   final asset = 'assets/video_1.mp4';
//   VideoPlayerController controller;
//  @override
//  void initState() {
//     super.initState();
//     controller = VideoPlayerController.asset(asset)
//       ..addListener(() => setState(() {}))
//       ..setLooping(true)
//       ..initialize().then((_) => controller.play());
//   }
// @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }


//   @override
//   Widget build(BuildContext context) {
//     return VideoPlayerWidget(controller: controller);
//   }
// }
