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
      ResolutionPreset.high,
    );

    // Next, initialize the controller. This returns a Future.
    _initializeControllerFuture = _controller.initialize();
  }

  @override
  // void dispose() {
  //   _cameraController!.dispose();
  //   super.dispose();
  // }
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
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color.fromARGB(0, 0, 0, 0),
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.person),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
          ],
        ),
        // body: SafeArea(
        //     child: _cameraController!.value.isInitialized
        //         ? CameraPreview(_cameraController!)
        //         : const Center(child: CircularProgressIndicator())),
        body: FutureBuilder<void>(
          future: _initializeControllerFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return CameraPreview(_controller);
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
        floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 108, 0, 108),
        child: Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(50)),
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(255, 132, 0, 121).withOpacity(0.2),
                spreadRadius: 3,
                blurRadius: 3,
                offset: const Offset(0, 0.5),
              ),
            ],
          ),
          child: const Icon(Icons.camera_alt),
        ),
        
        onPressed: () async {
          try {
            await _initializeControllerFuture;

            final image = await _controller.takePicture();
            // context.read<BikeDataProvider>().setImage(image);

            if (!mounted) return;

            // _close();
          } catch (e) {
            print(e);
          }
        },
      ),
        bottomNavigationBar: const ConcordinoNavbar(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

      ),
    );
  }
}
