import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/my_friends_list.dart';
import 'package:flutter_application_2/pages/home_page.dart';
import 'package:flutter_application_2/pages/user_page.dart';

void main() => runApp(MyFirstApp());

class MyFirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData(backgroundColor: Colors.white),
    );
  }
}
