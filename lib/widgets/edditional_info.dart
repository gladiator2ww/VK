import 'package:flutter/material.dart';

class EdditionalInfo extends StatelessWidget {
  final String text;
  final IconData iconLabel;

  const EdditionalInfo({
    required this.text,
    required this.iconLabel,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          iconLabel,
          size: 25,
          color: Colors.blue[700],
        ),
        SizedBox(width: 10),
        Text(
          text,
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.blue[700]),
        ),
      ],
    );
  }
}
