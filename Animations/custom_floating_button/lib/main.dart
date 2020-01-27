import 'package:flutter/material.dart';

import 'custom_floating_home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CustomFloatingHome(),
    );
  }
}
