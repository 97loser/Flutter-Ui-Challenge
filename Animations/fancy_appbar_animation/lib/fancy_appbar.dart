import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FancyAppBarAnim extends StatefulWidget {
  @override
  _FancyAppBarAnimState createState() => _FancyAppBarAnimState();
}

class _FancyAppBarAnimState extends State<FancyAppBarAnim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            shape : RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(50)
              )
            ),
            backgroundColor: Colors.white,
            expandedHeight: 200,
            title:  RichText(
              text:TextSpan(text:"Hey meerut,this is sliverAppBar",style: TextStyle(
                fontSize: 20,color: Colors.black
              )),

              maxLines: 2,
            ),
            floating: true,
            leading: IconButton(
              onPressed: (){

              },
              icon: Icon(Icons.arrow_back,color: Colors.black,),
            ),
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
            ),
          ),
          SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 2,
                crossAxisSpacing: 2
              ),
            delegate: SliverChildBuilderDelegate((context,index){
              return Container(
                  color: Colors.redAccent,
                  child: Center(child: Text("Hello $index"),),
                );
            },
            childCount: 20
            ),
          )
        ],
      ),
    );
  }
}
