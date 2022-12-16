import 'package:concordino_front/screens/widgets/navbar.dart';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

class ScanPage extends StatefulWidget {
  // final List<CameraDescription>? cameras;
  const ScanPage({Key? key, required this.cameras}) : super(key: key);
  final CameraDescription cameras;
  @override
  State<ScanPage> createState() => _ScanPageState();
}

class _ScanPageState extends State<ScanPage> {
  // late List<CameraDescription> cameras;
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;
  // Future <void> initCamera() async {
  //   try {
  //     await _cameraController!.initialize().then((_) {
  //       if (!mounted) return;
  //       setState(() {});
  //     });
  //   } on CameraException catch (e) {
  //     debugPrint("camera error $e");
  //   }
  // }

  @override
  // void initState() async {
  //   super.initState();
  //   cameras = await availableCameras();
  //   _cameraController =
  //       CameraController(cameras[0], ResolutionPreset.high);
  //   initCamera();
  // }
  void initState() {
    super.initState();
    _controller = CameraController(
      widget.cameras,
      ResolutionPreset.medium,
    );

    // Next, initialize the controller. This returns a Future.
    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    // Dispose of the controller when the widget is disposed.
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
            Color.fromARGB(255, 107, 23, 81),
            Color.fromARGB(230, 107, 23, 81),
            Color.fromARGB(250, 8, 7, 8),
          ])),
      child: FutureBuilder<void>(
        future: _initializeControllerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            // If the Future is complete, display the preview.
            return CameraPreview(_controller);
          } else {
            // Otherwise, display a loading indicator.
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
