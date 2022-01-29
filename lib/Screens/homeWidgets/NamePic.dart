import 'dart:async';

import 'package:flutter/material.dart';
import 'package:portfolio_walid_az/Strings/strings.dart';

class NamePic extends StatefulWidget {
  const NamePic({Key? key}) : super(key: key);

  @override
  _NamePicState createState() => _NamePicState();
}

class _NamePicState extends State<NamePic> {

  String function = "Mobile Developer";
  bool showCursor = true;
  late Timer _jobTimer;
  late Timer _cursorTimer;

  @override
  void initState() {
    super.initState();


    _cursorTimer = Timer.periodic(Duration(milliseconds: 300), (Timer t) {
      setState(() {
          showCursor = !showCursor;
      });
    });

    // defines a timer
    _jobTimer = Timer.periodic(Duration(seconds: 1), (Timer t) {
      setState(() {

        switch (((DateTime.now().second)%3).round()){
          case 0 : {
              function = "Mobile Developer";
          }
          break;
          case 1 : {
            function = "Web Developer";
          }
          break;
          case 2 : {
            function = "Data Scientist";
          }
          break;

        }

      });
    });
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [


          Column(
            children: [
              Row(
                  children: [
                    Text("My name is",style: TextStyle(color: Colors.black, decoration: TextDecoration.none, fontSize: 30),),
                    Text(' Walid',style: TextStyle(color: Strings.hexToColor(Strings.primaryColor),fontSize: 30, decoration: TextDecoration.none),),
                    Text(' Azizi, ',style: TextStyle(color: Colors.black,fontSize: 30, decoration: TextDecoration.none),),

                  ]
              ),
              SizedBox(height: 20,),
              Row(
                  children: [
                    Text("I'm a ",style: TextStyle(color: Colors.black, fontSize: 30,decoration: TextDecoration.none),),
                    Text(function,style: TextStyle(fontSize: 30,color: Strings.hexToColor(Strings.primaryColor), decoration: TextDecoration.none),),
                    showCursor ? Text("|",style: TextStyle(color: Colors.black, fontSize: 30,decoration: TextDecoration.none),) : Text(" ",style: TextStyle(fontSize: 30,color: Colors.black, decoration: TextDecoration.none),),
                  ]
              ),
              SizedBox(height: 20,),

              ClipRRect(
                borderRadius: BorderRadius.circular(300.0),
                child: Image.asset('images/profile_pic.jpeg',fit:BoxFit.scaleDown, width: 300,)
              )



            ],
          ),
          



      ],
      )
    );
  }
}
