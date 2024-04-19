// ignore_for_file: avoid_print, prefer_const_constructors

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:image_picker/image_picker.dart';

class OpenCameraScreen extends StatefulWidget {
  const OpenCameraScreen({Key? key}) : super(key: key);

  @override
  State<OpenCameraScreen> createState() => _OpenCameraScreenState();
}

class _OpenCameraScreenState extends State<OpenCameraScreen> {
  late CameraController _cameraController;
  late List<CameraDescription> _cameras;
  final ImagePicker _picker = ImagePicker();
  XFile? _capturedImage;

  @override
  void initState() {
    super.initState();
    // Initialize camera controller
    _initializeCamera();
  }

  void _initializeCamera() async {
    // Get available cameras
    _cameras = await availableCameras();
    // Select the first available camera
    _cameraController = CameraController(
      _cameras.first,
      ResolutionPreset.medium,
    );
    // Initialize the camera controller
    await _cameraController.initialize();
    // Update the state
    if (mounted) setState(() {});
  }

  @override
  void dispose() {
    // Dispose of the camera controller when not needed
    _cameraController.dispose();
    super.dispose();
  }

  Future<void> _takePicture() async {
    try {
      // Take a picture
      final XFile? image = await _picker.pickImage(source: ImageSource.camera);
      // Set the captured image
      setState(() {
        _capturedImage = image;
      });
    } catch (e) {
      print('Error taking picture: $e');
    }
  }

  Future<void> _pickImageFromGallery() async {
    try {
      // Pick image from gallery
      final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
      // Set the selected image
      setState(() {
        _capturedImage = image;
      });
    } catch (e) {
      print('Error picking image: $e');
    }
  }

  Widget _showCapturedImage() {
    if (_capturedImage == null) {
      return Container();
    }
    return Image.file(File(_capturedImage!.path));
  }

  Widget _showCameraPreview() {
    if (!_cameraController.value.isInitialized) {
      return Container();
    }
    return AspectRatio(
      aspectRatio: _cameraController.value.aspectRatio,
      child: CameraPreview(_cameraController),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                _showCameraPreview(),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: _takePicture,
                  child: Container(
                    margin: EdgeInsets.only(top: 20),
                    width: MediaQuery.of(context).size.width * 0.6,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.camera_alt_outlined,
                        size: 40,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                GestureDetector(
                  onTap: _pickImageFromGallery,
                  child: Container(
                    margin: EdgeInsets.only(top: 20),
                    width: MediaQuery.of(context).size.width * 0.6,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.browse_gallery_outlined,
                        size: 40,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                _showCapturedImage(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
