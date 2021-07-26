import 'package:flutter/rendering.dart';
import 'package:flutter_application_2/widgets/photos.dart';
import 'package:flutter_application_2/widgets/action_bar.dart';
import 'package:flutter_application_2/widgets/edditional_info.dart';
import 'package:flutter_application_2/widgets/message_and_call.dart';
import 'package:flutter_application_2/widgets/small_friends_list.dart';
import 'package:flutter_application_2/widgets/circle_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/friends_button.dart';
import 'package:flutter_application_2/widgets/general_information.dart';
import 'package:flutter_application_2/widgets/last_visited.dart';
import 'package:flutter_application_2/widgets/user_name.dart';
import 'package:flutter_application_2/widgets/user_login.dart';
import 'package:flutter_application_2/widgets/bottom_appbar.dart';

class UserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: UserLogin(
          text: 'natalia_karpuchik',
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  width: double.infinity,
                  height: 100,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      CircleImage(
                        size: 80,
                        rudius: 40,
                        imageUrl:
                            'https://sun9-31.userapi.com/impf/c857436/v857436384/d7c5/JU6w-Tj0gPs.jpg?size=1280x852&quality=96&sign=731fd76a8a995ed0be7e84572cd3a22f&type=album',
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(15, 2, 0, 2),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            UserName(name: 'Наталия Карпучик'),
                            Text(
                              "делай добро и всё получится",
                            ),
                            LastVizited(text: 'была в сети 23 минуты назад'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MassageAndCall(text: 'Сообщение'),
                    MassageAndCall(text: 'Звонок'),
                  ],
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.black, width: 0.1),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ActionBar(
                        iconLabel: Icons.group,
                        text: 'В друзьях',
                      ),
                      ActionBar(
                        iconLabel: Icons.credit_card,
                        text: 'Деньги',
                      ),
                      ActionBar(
                        iconLabel: Icons.local_mall,
                        text: 'Подарок',
                      ),
                      ActionBar(
                        iconLabel: Icons.notifications_active,
                        text: 'Уведомления',
                      ),
                    ],
                  ),
                ),
                GeneralInformation(
                  text: 'Город: Ляховцы',
                  iconLabel: Icons.home,
                ),
                GeneralInformation(
                  text:
                      'Место учебы: Волковысский колледж ГрГУ им. Янки Купалы (бывш. Педагогический колледж',
                  iconLabel: Icons.work,
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.black, width: 0.1),
                    ),
                  ),
                  child: EdditionalInfo(
                    iconLabel: Icons.info,
                    text: 'Подробная информация',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: FriendsButton(
                      text: 'ДРУЗЬЯ',
                      number: '248',
                      iconLabel: Icons.keyboard_arrow_right),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  height: 140,
                  width: double.infinity,
                  child: SmallFriendsList(),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(color: Colors.black, width: 0.1),
                    ),
                  ),
                  child: FriendsButton(
                      text: 'ФОТОГРАФИИ',
                      number: '93',
                      iconLabel: Icons.keyboard_arrow_right),
                ),
                Photos(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
