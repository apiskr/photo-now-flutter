import 'package:flutter/material.dart';
import 'package:photo_now_flutter/components/button_cta.dart';
import 'package:photo_now_flutter/components/bottom_nav_bar.dart';

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 50),
          Image.asset('assets/MainModel.png'),
          const Text('Photo now!',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              )),
          const Text(
            '다양한 필터를 적용해 폴라로이드 이미지를 만들어보세요!',
          ),
          const SizedBox(height: 10),
          // Bottombar
          const ButtonBar(
            alignment: MainAxisAlignment.center,
            children: [
              ButtonCta(text: 'Let\'s upload'),
            ],
          ),
        ],
      ),
      bottomNavigationBar: const BottomNavBar(
        route: '/home',
      ),
    );
  }
}
