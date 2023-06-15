import 'package:flutter/material.dart';
import 'package:photo_now_flutter/routes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Photo Now',
      routes: routes,
    );
  }
}
