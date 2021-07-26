import 'package:flutter/material.dart';

class LastVizited extends StatelessWidget {
  final String text;

  const LastVizited({
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 15, fontWeight: FontWeight.normal, color: Colors.grey),
    );
  }
}
