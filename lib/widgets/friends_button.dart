import 'package:flutter/material.dart';

class FriendsButton extends StatelessWidget {
  final String text;
  final String number;

  final IconData iconLabel;

  const FriendsButton({
    required this.text,
    required this.number,
    required this.iconLabel,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black87),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          number,
          style: TextStyle(
              fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black54),
        ),
        Spacer(),
        Icon(
          iconLabel,
          size: 30,
          color: Colors.black54,
        )
      ],
    );
  }
}
