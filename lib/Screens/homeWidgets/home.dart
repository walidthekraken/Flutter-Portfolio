import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_walid_az/Screens/homeWidgets/NamePic.dart';
import 'package:portfolio_walid_az/Strings/strings.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return 
      Container(
        padding: EdgeInsets.all(10),
        alignment: Alignment.center,
        child : Scrollbar(
          controller: _controller,
          isAlwaysShown: true,
          child: ListView(
            controller: _controller,
            shrinkWrap: true,
            children: [

              SizedBox(height: 100,),
              NamePic(),
              SizedBox(height: 20,),
              TextButton(
                onPressed: (){
                final screenHeight = MediaQuery.of(context).size.height;

                _controller.animateTo(560, curve: Curves.easeOut, duration: Duration(seconds: 1));

              },
                child: Text(' ↓ Check out the projects ↓ ',style: TextStyle(color: Strings.hexToColor(Strings.primaryColor),fontSize: 20, decoration: TextDecoration.none),),),
              SizedBox(height: 60,),
              Text("hi"),
              SizedBox(height: 1000,),

            ],

      

          ),
        ),
      );
  }
}
