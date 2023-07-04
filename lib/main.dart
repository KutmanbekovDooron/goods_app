import 'package:flutter/material.dart';
import 'package:goods_accounting/ControlScreens.dart';
import 'package:goods_accounting/screens/auth/Login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
          headline1: TextStyle(fontWeight: FontWeight.bold, fontSize: 50, color: Colors.indigo)
        )
      ),
      home: const ControlScreens(),
    );
  }
}

