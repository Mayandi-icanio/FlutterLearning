import 'package:first/Login.dart';
import 'package:first/MenuDrawer.dart';
import 'package:first/home.dart';
import 'package:flutter/material.dart';
import 'package:first/Settings.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return login();
  }
}
