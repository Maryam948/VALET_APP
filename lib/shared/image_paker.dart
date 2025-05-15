import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';
import 'dart:io';

class VideoUploadWidget extends StatefulWidget {
  const VideoUploadWidget({Key? key}) : super(key: key);

  @override
  State<VideoUploadWidget> createState() => _VideoUploadWidgetState();
}

class _VideoUploadWidgetState extends State<VideoUploadWidget> {
  File? _videoFile;
  VideoPlayerController? _controller;

  Future<void> _pickVideo() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickVideo(source: ImageSource.gallery);

    if (pickedFile != null) {
      _videoFile = File(pickedFile.path);
      _controller = VideoPlayerController.file(_videoFile!)
        ..initialize().then((_) {
          setState(() {});
          _controller!.play();
        });
    }
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: _pickVideo,
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xff8C5ACC),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          ),
          child: const Text("Upload Video", style: TextStyle(color: Colors.white)),
        ),
        const SizedBox(height: 20),
        if (_controller != null && _controller!.value.isInitialized)
          AspectRatio(
            aspectRatio: _controller!.value.aspectRatio,
            child: VideoPlayer(_controller!),
          )
        else
          Container(
            height: 200,
            width: double.infinity,
            color: const Color(0xffD9D9D9),
            alignment: Alignment.center,
            child: const Text("No Video Selected", style: TextStyle(color: Colors.white)),
          ),
      ],
    );
  }
}
