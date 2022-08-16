import 'dart:math';

import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:agora_rtc_engine/rtc_local_view.dart' as rtc_local_view;
import 'package:agora_rtc_engine/rtc_remote_view.dart' as rtc_remote_view;
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:video_call_agora/pages/index.dart';
//
// const appId = "06c7549b8bc74138976c3c2e91a4961f";
// const token =
//     "00606c7549b8bc74138976c3c2e91a4961fIAB//htsbHMIB0eXuoz6JaxK0hygn4ZLMub+HDU16A21tdzDPrsAAAAAEACOhaHHP0/yYgEAAQA/T/Ji";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const IndexPage(),
    );
  }
}
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int? _remoteUid;
//   late RtcEngine _engine;
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     initForAgora();
//   }
//
//   Future<void> initForAgora() async {
//     await [Permission.camera, Permission.microphone].request();
//
//     _engine = await RtcEngine.createWithContext(RtcEngineContext(appId));
//
//     await _engine.enableVideo();
//
//     _engine.setEventHandler(
//       RtcEngineEventHandler(
//         joinChannelSuccess: (String channel, int uid, int elapsed) {
//           print("local user $uid joined");
//         },
//         userJoined: (int uid, int elapsed) {
//           print("remote user $uid joined");
//           setState(() {
//             _remoteUid = uid;
//           });
//         },
//         userOffline: (int uid, UserOfflineReason reason) {
//           print("remote user $uid left");
//           setState(() {
//             _remoteUid = null;
//           });
//         },
//       ),
//     );
//
//     await _engine.joinChannel(token, "firstchannel", null, 0);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Agora Video Call"),
//         centerTitle: true,
//       ),
//       body: Center(
//         child: Stack(
//           children: [
//             Center(
//               child: _renderRemoteVideo(),
//             ),
//             Align(
//               alignment: Alignment.topLeft,
//               child: SizedBox(
//                 width: 200,
//                 height: 200,
//                 child: _renderLocalPreView(),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _renderLocalPreView() {
//     setState(() {});
//     return Transform.rotate(
//         angle: 90 * pi / 180, child: rtc_local_view.SurfaceView());
//   }
//
//   Widget _renderRemoteVideo() {
//     setState(() {});
//     if (_remoteUid != null) {
//       return rtc_remote_view.SurfaceView(
//         uid: _remoteUid!,
//         channelId: "firstchannel",
//       );
//     } else {
//       return const Text(
//         "Please wait for Other user to join",
//         textAlign: TextAlign.center,
//       );
//     }
//   }
// }
