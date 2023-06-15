import 'package:flutter/material.dart';

class ButtonCta extends StatelessWidget {
  final String text;

  const ButtonCta({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        padding: MaterialStateProperty.all(
          const EdgeInsets.symmetric(
            horizontal: 50,
            vertical: 8,
          ),
        ),
      ),
      onPressed: () {
        Navigator.pushNamed(context, '/upload');
      },
      child: Text(text, style: const TextStyle(fontSize: 16)),
    );
  }
}
