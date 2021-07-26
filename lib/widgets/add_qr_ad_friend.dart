import 'package:flutter/material.dart';

class AddQrAndFriend extends StatelessWidget {
  final String text;
  final IconData iconLabel;

  const AddQrAndFriend({
    required this.text,
    required this.iconLabel,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 50,
      alignment: Alignment.center,
      padding: EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black54,
            blurRadius: 1,
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black12),
      ),
      child: Row(
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
                fontSize: 15,
                fontWeight: FontWeight.normal,
                color: Colors.black87),
          ),
        ],
      ),
    );
  }
}
