import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String mainDescription;
  const Header({
    super.key,
    required this.mainDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 30),
      child: Column(
        children: [
          Image.asset(
            'assets/Title.png',
            width: 200,
          ),
          const SizedBox(height: 20),
          Text(mainDescription),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
