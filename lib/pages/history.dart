import 'package:flutter/material.dart';
import 'package:photo_now_flutter/components/bottom_nav_bar.dart';
import 'package:photo_now_flutter/components/header.dart';
import 'package:photo_now_flutter/components/box_image_history.dart';

class History extends StatelessWidget {
  const History({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Header(
              mainDescription: '이전 사진을 다시 출력 가능합니다.',
            ),
            Container(
                width: 360,
                height: 400,
                padding: const EdgeInsets.all(5),
                child: const Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BoxImageHistory(text: 'image1'),
                        BoxImageHistory(text: 'image2'),
                        BoxImageHistory(text: 'image3'),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BoxImageHistory(text: 'image4'),
                      ],
                    ),
                  ],
                )),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(
        route: '/history',
      ),
    );
  }
}
