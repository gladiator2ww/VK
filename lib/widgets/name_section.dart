import 'package:flutter/material.dart';

class NameSection extends StatelessWidget {
  final String text;

  const NameSection({
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black87),
    );
  }
}
