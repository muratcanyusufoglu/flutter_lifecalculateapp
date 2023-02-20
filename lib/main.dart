import 'package:flutter/material.dart';
import 'package:flutter_lifealculator/childPage.dart';
import 'package:flutter_lifealculator/homePage.dart';

import 'input.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.blue,
          brightness: Brightness.dark,
          accentColor: Colors.blueGrey),
      initialRoute: '/',
      routes: {
        '/': (context) => Input(),
        MyWidget.childPage: (context) => MyWidget(),
        SecondPage.secondPage: (context) => SecondPage(),
      },
    );
  }
}
