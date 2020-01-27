import 'package:flutter/material.dart';

import 'fancy_appbar.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FancyAppBarAnim(),
    );
  }
}
