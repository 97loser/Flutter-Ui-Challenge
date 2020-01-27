import 'package:flutter/material.dart';

class CustomFloatingHome extends StatefulWidget {
  @override
  _CustomFloatingHomeState createState() => _CustomFloatingHomeState();
}

class _CustomFloatingHomeState extends State<CustomFloatingHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Floating Button"),
      ),
      body: Center(
        child: Text("Custom Floating Button"),
      ),
      floatingActionButton: Stack(
        children: <Widget>[
          Container(
            width: 50,
            height: 50,
            constraints: BoxConstraints(maxHeight: 50),
            child: Column(
              children: <Widget>[
                Icon(Icons.search),
               SizedBox(
                 height: 10,
               ),
                Icon(Icons.camera),
                SizedBox(height: 10,)
              ],
            )
          ),
          Container(
            width: 50,
            height: 50,
            child: FloatingActionButton(
              child: Icon(Icons.add),
            )
          )
        ],
      )
    );
  }
}
