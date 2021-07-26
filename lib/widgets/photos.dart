import 'circle_image.dart';
import 'package:flutter/material.dart';

class Photos extends StatelessWidget {
  const Photos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 245,
      margin: EdgeInsets.only(top: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleImage(
                size: 120,
                rudius: 3,
                imageUrl:
                    'https://sun9-31.userapi.com/impf/c857436/v857436384/d7c5/JU6w-Tj0gPs.jpg?size=1280x852&quality=96&sign=731fd76a8a995ed0be7e84572cd3a22f&type=album',
              ),
              CircleImage(
                size: 120,
                rudius: 3,
                imageUrl:
                    'https://sun9-32.userapi.com/impf/c856132/v856132570/4f728/L_mlqkH72rI.jpg?size=715x1080&quality=96&sign=63387a63bc6420a3f543e08cdb573df6&type=album',
              ),
              CircleImage(
                size: 120,
                rudius: 3,
                imageUrl:
                    'https://sun9-69.userapi.com/impf/c844216/v844216010/11bebe/ANZ7GHScs4g.jpg?size=810x1080&quality=96&sign=e12aa75b641bc16b228837da6c105f63&type=album',
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleImage(
                size: 120,
                rudius: 3,
                imageUrl:
                    'https://sun9-30.userapi.com/impf/c638921/v638921123/5a601/bIsdXiKhL7s.jpg?size=715x1080&quality=96&sign=e20a6e5844a1a8aac4658e2d6adffc94&type=album',
              ),
              CircleImage(
                size: 120,
                rudius: 3,
                imageUrl:
                    'https://sun9-21.userapi.com/impf/c824501/v824501123/5853d/qRMTwx1-3AA.jpg?size=1280x848&quality=96&sign=4b0b3110eec7dcbe51ce41eadb1349a1&type=album',
              ),
              CircleImage(
                size: 120,
                rudius: 3,
                imageUrl:
                    'https://sun9-36.userapi.com/impf/c834401/v834401123/5f448/SUlXkt9tjo8.jpg?size=715x1080&quality=96&sign=f6ba46a4bbb55331d44181779295ac15&type=album',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
