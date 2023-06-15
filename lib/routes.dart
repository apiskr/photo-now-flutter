import 'package:photo_now_flutter/pages/home.dart';
import 'package:photo_now_flutter/pages/upload.dart';
import 'package:photo_now_flutter/pages/history.dart';

final routes = {
  '/': (context) => const Home(),
  '/home': (context) => const Home(),
  '/upload': (context) => const Upload(),
  '/history': (context) => const History(),
};
