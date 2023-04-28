import 'dart:async';
import 'dart:developer';
import 'dart:io';
import 'package:camera/camera.dart';
import 'package:concordino_front/core/api/bottle/search_image_http.dart';
import 'package:concordino_front/core/model/cave_bottle_model.dart';
import 'package:concordino_front/screens/views/bottle_info_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/provider/user_provider.dart';

// A screen that allows users to take a picture using a given camera.
class TakePictureScreen extends StatefulWidget {
  const TakePictureScreen({
    super.key,
    required this.camera,
  });

  final CameraDescription camera;

  @override
  TakePictureScreenState createState() => TakePictureScreenState();
}

class TakePictureScreenState extends State<TakePictureScreen> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;

  @override
  void initState() {
    super.initState();
    // To display the current output from the Camera,
    // create a CameraController.
    _controller = CameraController(
      // Get a specific camera from the list of available cameras.
      widget.camera,
      // Define the resolution to use.
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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Take a picture'),
        backgroundColor: const Color.fromARGB(255, 131, 4, 11),
      ),
      // You must wait until the controller is initialized before displaying the
      // camera preview. Use a FutureBuilder to display a loading spinner until the
      // controller has finished initializing.
      body: FutureBuilder<void>(
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
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 131, 4, 11),
        // Provide an onPressed callback.
        onPressed: () async {
          Navigator.push(context, 
          MaterialPageRoute(builder: (context) => BottleInfoView()),
          );
          // try {
          //   await _initializeControllerFuture;

          //   final image = await _controller.takePicture();

          //   if (!mounted) return;

          //   await Navigator.of(context).push(
          //     MaterialPageRoute(
          //       builder: (context) => DisplayPictureScreen(
          //         imagePath: image.path,
          //       ),
          //     ),
          //   );
          // } catch (e) {
          //   print(e);
          // }
        },
        child: const Icon(Icons.camera_alt),
      ),
    );
  }
}

// A widget that displays the picture taken by the user.
class DisplayPictureScreen extends StatelessWidget {
  final String imagePath;

  const DisplayPictureScreen({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    String token = Provider.of<UserProvider>(context, listen: true).token!;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Display the Picture'),
          backgroundColor: const Color.fromARGB(255, 131, 4, 11),
        ),
        // The image is stored as a file on the device. Use the `Image.file`
        // constructor with the given path to display the image.
        body: Image.file(File(imagePath)),
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 131, 4, 11),
          onPressed: () {
            searchImageHttp(File(imagePath), token).then((value) => {
                  if (value.isNotEmpty)
                    {
                      Navigator.pop(context),
                      Navigator.pop(context),
                      showDialog<void>(
                        context: context,
                        builder: (BuildContext context) {
                          return ModalBottles(bottles: value);
                        },
                      ),
                    }
                  else
                    {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Bottle not found"),
                        ),
                      ),
                    }
                });
          },
          child: const Icon(Icons.check),
        ));
  }
}

class ModalBottles extends StatelessWidget {
  final List<CaveBottle> bottles;
  const ModalBottles({
    required this.bottles,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Résultat de la recherche '),
      content: SizedBox(
        height: 200,
        width: 200,
        child: ListView.builder(
            itemCount: bottles.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(bottles[index].name),
              );
            }),
      ),
      actions: <Widget>[
        TextButton(
          style: TextButton.styleFrom(
            textStyle: Theme.of(context).textTheme.labelLarge,
          ),
          child: const Text('Disable'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
