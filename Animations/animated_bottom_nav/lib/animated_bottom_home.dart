import 'package:flutter/material.dart';

class AnimatedBottomNavHome extends StatefulWidget {
  @override
  _AnimatedBottomNavHomeState createState() => _AnimatedBottomNavHomeState();
}

class _AnimatedBottomNavHomeState extends State<AnimatedBottomNavHome>with SingleTickerProviderStateMixin {

  Animation anim ;
  AnimationController controller ;

  int currentIndex , tapIndex;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500)
    );
    anim = Tween<double>(begin: 0.0,end: 1.0).animate(CurvedAnimation(
      curve: Curves.ease,
      parent: controller
    ))
    ..addListener((){
      setState(() {
        if(controller.isCompleted) {
          currentIndex = tapIndex;
        }
      });
    });

    currentIndex = 0;
    tapIndex = 0;
    controller.forward();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text("Animated Bottom Navigation"),
      ),
      body: Center(
        child: Text("Home Page"),
      ),
      bottomNavigationBar: Card(
        color: Colors.grey.shade300,
        elevation: 4,
        child: Container(
          height: 50,
          child: Row(
            children: <Widget>[
              Expanded(
                child: ListView(
                  children: <Widget>[
                    Transform(
                      transform: currentIndex == 0 || tapIndex ==0? Matrix4.translationValues(0, 40*anim.value, 10) : Matrix4.translationValues(0, 0, 0),
                      child: Center(
                        child: Container(
                          child: IconButton(
                            onPressed: (){
                              tapIndex = 0 ; //
                              if(controller.isCompleted) {
                                controller.reverse().orCancel;
                              }
                              else {
                                controller.forward();
                              }
                            },
                            icon: Icon(Icons.home,),
                          ),
                        ),
                      ),
                    ),
                    Transform(
                      transform: currentIndex ==0  || tapIndex ==0? Matrix4.translationValues(0, -40*anim.value, 10) :Matrix4.translationValues(0, 0, 0) ,
                      child: Column(
                        children: <Widget>[
                          Text("Home",style: TextStyle(color: Colors.red,fontSize: 16),),
                          Icon(Icons.fiber_manual_record,size: 12,color: Colors.red,)
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  children: <Widget>[
                    Transform(
                      transform: currentIndex == 1 || tapIndex ==1 ? Matrix4.translationValues(0, 40*anim.value, 10) : Matrix4.translationValues(0, 0, 0),
                      child: Center(
                        child: Container(
                          child: IconButton(
                            onPressed: (){
                              tapIndex = 1 ; //
                              if(controller.isCompleted) {
                                controller.reverse().orCancel;
                              }
                              else {
                                controller.forward();
                              }
                            },
                            icon: Icon(Icons.verified_user,),
                          ),
                        ),
                      ),
                    ),
                    Transform(
                      transform: currentIndex ==1 || tapIndex ==1 ? Matrix4.translationValues(0, -40*anim.value, 10) :Matrix4.translationValues(0, 0, 0) ,
                      child: Column(
                        children: <Widget>[
                          Text("User",style: TextStyle(color: Colors.red,fontSize: 16),),
                          Icon(Icons.fiber_manual_record,size: 12,color: Colors.red,)
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  children: <Widget>[
                    Transform(
                      transform: currentIndex == 2 || tapIndex ==2? Matrix4.translationValues(0, 40*anim.value, 10) : Matrix4.translationValues(0, 0, 0),
                      child: Center(
                        child: Container(
                          child: IconButton(
                            onPressed: (){
                              tapIndex = 2 ; //
                              if(controller.isCompleted) {
                                controller.reverse().orCancel;
                              }
                              else {
                                controller.forward();
                              }
                            },
                            icon: Icon(Icons.menu,),
                          ),
                        ),
                      ),
                    ),
                    Transform(
                      transform: currentIndex ==2 ||tapIndex==2  ? Matrix4.translationValues(0, -40*anim.value, 10) :Matrix4.translationValues(0, 0, 0) ,
                      child: Column(
                        children: <Widget>[
                          Text("Menu",style: TextStyle(color: Colors.red,fontSize: 16),),
                          Icon(Icons.fiber_manual_record,size: 12,color: Colors.red,)
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
