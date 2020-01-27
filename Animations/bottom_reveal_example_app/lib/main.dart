import 'package:flutter/material.dart';

import 'bottom_reveal_home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.redAccent,
        accentColor: Colors.redAccent
      ),
      debugShowCheckedModeBanner: false,
      home: BottomRevealHome(),
    );
  }
}
