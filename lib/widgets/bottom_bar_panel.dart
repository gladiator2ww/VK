import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomBarPanel extends StatelessWidget {
  final IconData iconLabel;
  final String text;

  const BottomBarPanel({
    required this.iconLabel,
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Icon(
            iconLabel,
            size: 15,
            color: Colors.grey,
          ),
          Text(
            text,
            style: TextStyle(
                fontSize: 13, fontWeight: FontWeight.bold, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
