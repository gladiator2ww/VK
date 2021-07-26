import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/user_page.dart';
import 'circle_image.dart';
import 'package:flutter_application_2/widgets/name_circle_image.dart';

class SmallFriendsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UserPage(),
                  ),
                );
              },
              child: CircleImage(
                size: 60,
                rudius: 30,
                imageUrl:
                    'https://sun9-31.userapi.com/impf/c857436/v857436384/d7c5/JU6w-Tj0gPs.jpg?size=1280x852&quality=96&sign=731fd76a8a995ed0be7e84572cd3a22f&type=album',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            NameCircleImage(
              name: "Наталия Карпучик",
            ),
          ],
        ),
        SizedBox(
          width: 15,
        ),
        Column(
          children: [
            CircleImage(
              size: 60,
              rudius: 30,
              imageUrl:
                  'https://sun9-78.userapi.com/impg/cCxzSue_S6FAQd4U_fL3S1DwjzURK6d39RLnAw/UaxFVcfk0zA.jpg?size=810x1080&quality=95&sign=055b8bd180bde54933e067b1b25eb493&type=album',
            ),
            SizedBox(
              height: 10,
            ),
            NameCircleImage(
              name: "Сергей Кульбеда",
            ),
          ],
        ),
        SizedBox(
          width: 15,
        ),
        Column(
          children: [
            CircleImage(
              size: 60,
              rudius: 30,
              imageUrl:
                  'https://sun9-72.userapi.com/impf/c856016/v856016811/2ea0b/LpX9ZYXf8og.jpg?size=1280x857&quality=96&sign=b93228be5ddf14ea32f21315a9bb8f51&type=album',
            ),
            SizedBox(
              height: 10,
            ),
            NameCircleImage(
              name: "Ваня Бурштын",
            ),
          ],
        ),
        SizedBox(
          width: 15,
        ),
        Column(
          children: [
            CircleImage(
              size: 60,
              rudius: 30,
              imageUrl:
                  'https://sun9-19.userapi.com/impf/c853428/v853428433/11a418/K1j-ofbUnF0.jpg?size=809x1080&quality=96&sign=a7168ad460179714750c27426b5a9692&type=1561album',
            ),
            SizedBox(
              height: 10,
            ),
            NameCircleImage(
              name: "Дима Касянюк",
            ),
          ],
        ),
        SizedBox(
          width: 15,
        ),
        Column(
          children: [
            CircleImage(
              size: 60,
              rudius: 30,
              imageUrl:
                  'https://sun9-25.userapi.com/impg/aV-s06lALL0miqgkdhnKZD2ASdEDc_OnOFJDFw/ib33mwv7Dbs.jpg?size=1280x1280&quality=96&sign=1924a6967bdf3ff7499a9760212969dc&type=album',
            ),
            SizedBox(
              height: 10,
            ),
            NameCircleImage(
              name: "Валерий Леонидович",
            ),
          ],
        ),
        SizedBox(
          width: 15,
        ),
        Column(
          children: [
            CircleImage(
              size: 60,
              rudius: 30,
              imageUrl:
                  'https://sun9-68.userapi.com/impg/2t5mXvbQrvTe6KkvDz4Ln89RR_fQ36B8SzW69w/VA6V19HCA-0.jpg?size=607x1080&quality=96&sign=26c62381e5e0fe63960f01763adfd510&type=album',
            ),
            SizedBox(
              height: 10,
            ),
            NameCircleImage(
              name: "Катя Патеюк",
            ),
          ],
        ),
      ],
    );
  }
}
