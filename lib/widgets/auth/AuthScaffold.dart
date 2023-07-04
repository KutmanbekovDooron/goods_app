import 'package:flutter/material.dart';

class AuthScaffold extends StatelessWidget {
  final Widget child;

  const AuthScaffold({required this.child, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.indigo,Colors.white60,Colors.white60, Colors.white60, Colors.orange],
            begin: FractionalOffset.bottomLeft,
            end: FractionalOffset.topRight,
            tileMode: TileMode.mirror,
          ),
        ),
        child: SafeArea(child: child),
      ),
    );
  }
}
