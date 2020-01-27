import 'package:flutter/material.dart';

class BottomRevealHome extends StatefulWidget {
  @override
  _BottomRevealHomeState createState() => _BottomRevealHomeState();
}

class _BottomRevealHomeState extends State<BottomRevealHome> with SingleTickerProviderStateMixin{
  
  Animation anim ;
  AnimationController animCont;
  double _height ;
  double _width;
  
  @override
  void initState() {
    animCont = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500)
    );

    anim = Tween<double>(begin:0,end: 1 ).animate(CurvedAnimation(
      curve: Curves.ease,
      parent: animCont
    ))
    ..addListener((){
      setState(() {

      });
    });
    
    // TODO: implement initState
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Color(0xff2D0C3F),
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){

          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text("Bottom Reveal Example App"),
      ),
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.centerRight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(4),
                  color: Colors.grey.shade200,
                  child: IconButton(
                    onPressed: (){

                    },
                    icon: Icon(Icons.video_library),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  padding: EdgeInsets.all(4),
                  margin: EdgeInsets.all(8),
                  color: Colors.grey.shade200,
                  child: IconButton(
                    onPressed: (){

                    },
                    icon: Icon(Icons.photo_library),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  padding: EdgeInsets.all(4),
                  color: Colors.grey.shade200,
                  child: IconButton(
                    onPressed: (){

                    },
                    icon: Icon(Icons.camera_enhance),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: anim.value > 0.5 ? EdgeInsets.only(right: 20.0,bottom: 20.0) : EdgeInsets.all(0),
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.only(
                bottomRight: anim.value == 0 ? Radius.circular(0) : Radius.circular(15)
              )
            ),
            height: _height - 200 * anim.value,
            width: _width - 100*anim.value,
            child: ListView.builder(itemBuilder: (context,index){
              return Container(
                height: 50,
                color: Colors.grey,
                margin: EdgeInsets.only(top: 2,bottom: 2),
                child: Text("Item $index"),
              );
            },
              itemCount: 50,
            ),
          ),
          Visibility(
            visible: anim.value > 0.5 ? true : false,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: SingleChildScrollView(
                child:  Container(
                  padding: EdgeInsets.only(bottom: 20,right: 20),
                  width: 220,
                  alignment: Alignment.bottomCenter,
                  child: TextField(
                      decoration : InputDecoration(
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                width: 10
                            )
                        ),
                        fillColor: Colors.white,
                        suffixIcon  : Icon(Icons.search),
                      )
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: IconButton(
          onPressed: (){
            if(animCont.isCompleted) {
              animCont.reverse();
            }
            else {
              animCont.forward();
            }
           // _height = _height - 200 * anim.value;
           // _width = _width - 200 * anim.value;
          },
          icon: Icon(Icons.add),
        ),
      ),
    );
  }
}
