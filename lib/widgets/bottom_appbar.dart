import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          label: 'Главная',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.apps,
          ),
          label: 'Сервисы',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.chat_bubble_outline,
          ),
          label: 'Мессенджер',
        ),
      ],
    );
  }
}
