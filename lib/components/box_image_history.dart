import 'package:flutter/material.dart';

class BoxImageHistory extends StatelessWidget {
  final String text;
  const BoxImageHistory({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          width: 1,
        ),
      ),
      child: Center(
        child: Text(text),
      ),
    );
  }
}
