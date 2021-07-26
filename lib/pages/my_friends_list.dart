import 'package:flutter_application_2/widgets/name_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/important_friends.dart';
import 'package:flutter_application_2/widgets/search.dart';
import 'package:flutter_application_2/widgets/add_qr_ad_friend.dart';

class MyFriendsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              'Друзья',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Search(
              text: 'Поиск',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AddQrAndFriend(
                  iconLabel: Icons.qr_code_scanner,
                  text: 'Cканировать QR',
                ),
                AddQrAndFriend(
                  iconLabel: Icons.person_add,
                  text: 'Добавить друга',
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 15),
              child: NameSection(text: 'Важные'),
            ),
            ImportantFriends(),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 15),
              child: NameSection(text: 'Возможные друзья'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(),
    );
  }
}
