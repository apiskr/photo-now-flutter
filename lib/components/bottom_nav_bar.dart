import 'package:flutter/material.dart';
import 'package:photo_now_flutter/routes.dart';

class BottomNavBar extends StatelessWidget {
  final String route;
  const BottomNavBar({
    super.key,
    required this.route,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.upload), label: 'Uplode'),
        BottomNavigationBarItem(
            icon: Icon(Icons.photo_outlined), label: 'History'),
      ],
      onTap: (index) {
        Navigator.pushReplacementNamed(
            context, routes.keys.toList()[index + 1]);
      },
      currentIndex: routes.keys.toList().indexOf(route) - 1,
    );
  }
}
