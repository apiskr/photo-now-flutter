import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:photo_now_flutter/components/image_frame.dart';

// [Todo] stateful widget으로 바꾸기
class UploadSection extends StatefulWidget {
  XFile? pickedImg;

  UploadSection({
    required this.pickedImg,
    super.key,
  });

  @override
  State<UploadSection> createState() => _UploadSectionState();
}

// State를 따로 클래스로 관리하는 건가?
class _UploadSectionState extends State<UploadSection> {
  final ImagePicker picker = ImagePicker();
  XFile? pickedImg;

  @override
  void initState() {
    super.initState();
    pickedImg = widget.pickedImg;
  }

  Future<void> _pickImage() async {
    try {
      final XFile? image = await picker.pickImage(source: ImageSource.gallery);
      if (image == null) return;
      setState(() {
        pickedImg = image;
      });
    } catch (e) {
      // ignore: avoid_print
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return pickedImg == null
        ? DottedBorder(
            dashPattern: const [10, 10],
            borderType: BorderType.RRect,
            padding: const EdgeInsets.all(2),
            radius: const Radius.circular(20),
            strokeWidth: 4,
            color: Colors.grey,
            child: SizedBox(
              width: 200,
              height: 300,
              child: TextButton(
                  onPressed: () {
                    _pickImage();
                  },
                  child: const Text('사진을 선택해주세요.',
                      style: TextStyle(color: Colors.grey))),
            ),
          )
        // BorderType.RRect: 사각형
        : Container(
            width: 200,
            height: 300,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: 1,
              ),
            ),
            child: ImageFrame(
              pickedImg: pickedImg,
              pickImage: _pickImage,
            ));
  }
}
