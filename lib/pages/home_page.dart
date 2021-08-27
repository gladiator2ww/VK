import 'package:flutter/rendering.dart';
import 'package:flutter_application_2/widgets/action_bar.dart';
import 'package:flutter_application_2/widgets/edditional_info.dart';
import 'package:flutter_application_2/widgets/edit_profile.dart';
import 'package:flutter_application_2/widgets/small_friends_list.dart';
import 'package:flutter_application_2/widgets/circle_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/friends_button.dart';
import 'package:flutter_application_2/widgets/general_information.dart';
import 'package:flutter_application_2/widgets/last_visited.dart';
import 'package:flutter_application_2/widgets/user_name.dart';
import 'package:flutter_application_2/widgets/user_login.dart';
import 'package:flutter_application_2/widgets/my_photos.dart';
import 'package:flutter_application_2/pages/my_friends_list.dart';
import 'package:flutter_application_2/widgets/bottom_appbar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: UserLogin(
          text: 'sasha_karpuchik',
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
                            'https://sun1-97.userapi.com/impg/DXT2IhVq1k-MNOM1mDK0MKEsfeeW-HQIwD6cXA/lXT5avGMneQ.jpg?size=400x0&quality=96&crop=0,1,1079,1079&sign=41060b4d038c69f6962e4497b89e3a4a&c_uniq_tag=4zk23sJrEloFXBBiROuxsZgF8w_ROHHwYaNOvoGGGtM&ava=1',
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(15, 2, 0, 2),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            UserName(name: 'Саша Карпучик'),
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
                EditProfile(text: 'Редактировать'),
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
                        iconLabel: Icons.photo_camera,
                        text: 'История',
                      ),
                      ActionBar(
                        iconLabel: Icons.create,
                        text: 'Запись',
                      ),
                      ActionBar(
                        iconLabel: Icons.photo,
                        text: 'Фото',
                      ),
                      ActionBar(
                        iconLabel: Icons.shop_two,
                        text: 'Клип',
                      ),
                    ],
                  ),
                ),
                GeneralInformation(
                  text: 'Город: Ляховцы',
                  iconLabel: Icons.home,
                ),
                GeneralInformation(
                  text: 'Место работы: ГК "СТиМ" СООО "БСК"',
                  iconLabel: Icons.work,
                ),
                GeneralInformation(
                  text: '104 подписчика',
                  iconLabel: Icons.rss_feed,
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
                  padding: EdgeInsets.only(top: 10),
                  child: InkWell(
                    onTap: () {
                      // final data = await movieProvider.fetchMovies();
                      // print(data.first.fullTitle);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyFriendsList(),
                        ),
                      );
                    },
                    child: FriendsButton(
                        text: 'ДРУЗЬЯ',
                        number: '287',
                        iconLabel: Icons.keyboard_arrow_right),
                  ),
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
                MyPhotos(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
