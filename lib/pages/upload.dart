import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:photo_now_flutter/components/Header.dart';
import 'package:photo_now_flutter/components/bottom_nav_bar.dart';
import 'package:photo_now_flutter/components/color_button.dart';
import 'package:photo_now_flutter/components/upload_section.dart';

class Upload extends StatefulWidget {
  const Upload({
    super.key,
  });

  @override
  State<Upload> createState() => _UploadState();
}

class _UploadState extends State<Upload> {
  XFile? pickedImg;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Header(mainDescription: '출력하고 싶은 사진을 골라보세요.'),
            // 사진 업로드 위젯
            UploadSection(pickedImg: pickedImg),
            const SizedBox(height: 20),
            const SizedBox(
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ColorButton(
                      text: 'Origin', backgroundColor: Colors.lightGreen),
                  ColorButton(text: 'TypeA', backgroundColor: Colors.grey),
                  ColorButton(text: 'TypeB', backgroundColor: Colors.lightBlue),
                  ColorButton(text: 'TypeC', backgroundColor: Colors.orange),
                ],
              ),
            ),
            SizedBox(
              width: 180,
              child: ElevatedButton(
                onPressed: () async {
                  final ImagePicker _picker = ImagePicker();
                  final XFile? image = await _picker.pickImage(
                    source: ImageSource.gallery,
                  );
                  setState(() {
                    pickedImg = image;
                  });
                },
                child: const Text('Save!'),
              ),
            ),
          ],
        ),
      ),
      // [Todo] BottomNavBar를 상위 위젯으로 빼기
      bottomNavigationBar: const BottomNavBar(
        route: '/upload',
      ),
    );
  }
}
