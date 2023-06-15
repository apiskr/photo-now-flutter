import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageFrame extends StatelessWidget {
  final XFile? pickedImg;
  final Function pickImage;

  const ImageFrame({
    super.key,
    required this.pickedImg,
    required this.pickImage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        TextButton(
          onPressed: () {
            pickImage();
          },
          child: Image.file(File(pickedImg!.path), fit: BoxFit.contain),
        ),
        const SizedBox(height: 20),
        const Text("Hello!")
      ],
    );
  }
}
