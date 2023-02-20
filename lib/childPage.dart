import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_lifealculator/homePage.dart';

class MyWidget extends StatelessWidget {
  static String childPage = '/childPage';
  const MyWidget({super.key});
  @override
  Widget build(BuildContext context) {
    final propUser = ModalRoute.of(context)?.settings.arguments as User;
    return Column(children: <Widget>[
      Text(
          'name; ${propUser.name}  userAge: ${propUser.age}  userName: ${propUser.username}')
    ]);
  }
}
