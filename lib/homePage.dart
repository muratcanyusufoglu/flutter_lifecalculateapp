import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_lifealculator/childPage.dart';
import 'package:flutter_lifealculator/input.dart';

class User {
  String? name;
  int? age;
  String? username;

  User({this.name, this.age, this.username});
}

class SecondPage extends StatefulWidget {
  static String secondPage = '/secondPage';
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  User user_1 = User(name: 'Muratcan', age: 25, username: 'mcy');

  Route route = MaterialPageRoute(builder: (context) {
    return Input();
  });
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          Navigator.pushNamed(context, MyWidget.childPage, arguments: user_1);
        },
        child: Text('adsa'));
  }
}
