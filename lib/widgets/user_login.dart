import 'package:flutter/material.dart';

class UserLogin extends StatelessWidget {
  final String text;

  const UserLogin({
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          text,
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        Spacer(),
        Icon(Icons.qr_code, color: Colors.blue),
        SizedBox(
          width: 20,
        ),
        Icon(Icons.menu, color: Colors.blue),
      ],
    );
  }
}
