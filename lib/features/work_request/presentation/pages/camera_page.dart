import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:proapps_mobile/core/errors/snackbar.dart';

class CameraPage extends StatefulHookConsumerWidget {
  const CameraPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CameraPageState();
}

class _CameraPageState extends ConsumerState<CameraPage> {
  late CameraController _cameraController;
  late Future<void> _initializeControllerFuture;

  @override
  void initState() {
    super.initState();
    _initializeControllerFuture = _initializeCamera();
  }

  Future<void> _initializeCamera() async {
    final cameras = await availableCameras();

    _cameraController = CameraController(
      cameras[0],
      ResolutionPreset.medium,
    );

    await _cameraController.initialize();
  }

  @override
  void dispose() {
    _cameraController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FutureBuilder(
            future: _initializeControllerFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return CameraPreview(_cameraController);
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            },
          ),
          GestureDetector(
            onTap: () async {
              try {
                await _initializeControllerFuture;
                final image = await _cameraController.takePicture();
                // ignore: use_build_context_synchronously
                context.pop(image.path);
              } catch (e) {
                context.showErrorSnackBar(message: e.toString());
              }
            },
            child: Container(
              width: double.infinity,
              color: Colors.black,
              padding: const EdgeInsets.all(50),
              child: const CircleAvatar(
                backgroundColor: Colors.white,
                radius: 30,
                child: Icon(
                  Icons.camera,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
