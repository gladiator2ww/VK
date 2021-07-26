import 'circle_image.dart';
import 'package:flutter/material.dart';

class MyPhotos extends StatelessWidget {
  const MyPhotos({Key? key}) : super(key: key);

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
                    'https://sun9-37.userapi.com/impg/DXT2IhVq1k-MNOM1mDK0MKEsfeeW-HQIwD6cXA/lXT5avGMneQ.jpg?size=1078x1080&quality=96&sign=5e2588e5b3803d91c4c9a889fbda5067&type=album',
              ),
              CircleImage(
                size: 120,
                rudius: 3,
                imageUrl:
                    'https://sun9-84.userapi.com/impf/c840335/v840335941/34222/mVaVtAst40o.jpg?size=715x1080&quality=96&sign=4174058814c3340088c5bccf4592711b&type=album',
              ),
              CircleImage(
                size: 120,
                rudius: 3,
                imageUrl:
                    'https://sun9-78.userapi.com/impf/c836632/v836632160/54f5e/Ly5dIpyJA3w.jpg?size=715x1080&quality=96&sign=d6c8fc8db799d227ee596e0b02e64055&type=album',
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
                    'https://sun9-2.userapi.com/impf/c836631/v836631786/5229c/BwMbqWs6eqU.jpg?size=715x1080&quality=96&sign=37aedc2f6fcc37a025df7409704a5621&type=album',
              ),
              CircleImage(
                size: 120,
                rudius: 3,
                imageUrl:
                    'https://sun9-33.userapi.com/impf/c836631/v836631786/52292/42FZq5fF28M.jpg?size=715x1080&quality=96&sign=1da78d7a58799b6b4bf3725a435eb108&type=album',
              ),
              CircleImage(
                size: 120,
                rudius: 3,
                imageUrl:
                    'https://sun9-35.userapi.com/impf/c836631/v836631786/52288/THFMTj6Gk58.jpg?size=715x1080&quality=96&sign=c0f6290711fda3807e6bbe78a5869bbf&type=album',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
