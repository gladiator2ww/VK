import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
  final String text;

  const EditProfile({
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 35,
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: 5),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(
        text,
        style: TextStyle(
            color: Colors.blue[700], fontSize: 16, fontWeight: FontWeight.w600),
      ),
    );
  }
}
