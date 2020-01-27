import 'package:flutter/material.dart';

import 'animated_bottom_home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedBottomNavHome(),
    );
  }
}
