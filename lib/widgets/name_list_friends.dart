import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class NameListFriends extends StatelessWidget {
  final String name;
  final String town;

  const NameListFriends({
    required this.name,
    required this.town,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15),
      width: 320,
      height: 60,
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 5),
              Text(
                town,
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.normal,
                    color: Colors.black54),
              ),
            ],
          ),
          Spacer(),
          Icon(
            Icons.call,
            size: 25,
            color: Colors.blue[700],
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.chat_bubble_outline,
            size: 25,
            color: Colors.blue[700],
          ),
        ],
      ),
    );
  }
}
