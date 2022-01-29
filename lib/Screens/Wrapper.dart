import 'package:flutter/material.dart';
import 'package:portfolio_walid_az/Screens/porfolio.dart';

import 'contact.dart';
import 'homeWidgets/home.dart';
import '../Strings/strings.dart';

class Wrapper extends StatefulWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {

  Color homeColor = Strings.hexToColor(Strings.primaryColor);
  Color portfolioColor = Strings.hexToColor(Strings.lightColor);
  Color contactColor = Strings.hexToColor(Strings.lightColor);
  Color cvColor = Strings.hexToColor(Strings.lightColor);

  TextDecoration homeDecoration = TextDecoration.underline;
  TextDecoration portfolioDecoration = TextDecoration.none;
  TextDecoration contactDecoration = TextDecoration.none;

  Widget currentPage = Home();

  void switchPage(String page){
    setState(() {
      switch(page){
        case "home" :{
          homeColor = Strings.hexToColor(Strings.primaryColor);
          portfolioColor=Strings.hexToColor(Strings.lightColor);
          contactColor=Strings.hexToColor(Strings.lightColor);
          homeDecoration = TextDecoration.underline;
          portfolioDecoration = TextDecoration.none;
          contactDecoration = TextDecoration.none;
          currentPage=Home();
        }
        break;
        case "contact" :{
          homeColor = Strings.hexToColor(Strings.lightColor);
          portfolioColor=Strings.hexToColor(Strings.lightColor);
          contactColor=Strings.hexToColor(Strings.primaryColor);
          homeDecoration = TextDecoration.none;
          portfolioDecoration = TextDecoration.none;
          contactDecoration = TextDecoration.underline;
          currentPage=Contact();
        }
        break;
        case "portfolio" :{
          homeColor = Strings.hexToColor(Strings.lightColor);
          portfolioColor=Strings.hexToColor(Strings.primaryColor);
          contactColor=Strings.hexToColor(Strings.lightColor);
          homeDecoration = TextDecoration.none;
          portfolioDecoration = TextDecoration.underline;
          contactDecoration = TextDecoration.none;
          currentPage=Portfolio();
        }
        break;
      }
    });

  }

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        SizedBox(height: 30.0,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextButton(onPressed: (){switchPage("home");}, child: Text('Home', style: TextStyle(decoration: homeDecoration, color: homeColor, fontSize: Strings.textSize, fontFamily: Strings.fontFam),),),
            SizedBox(width: 20.0,),
            TextButton(onPressed: (){switchPage("portfolio");}, child: Text('Portfolio', style: TextStyle(decoration: portfolioDecoration ,color: portfolioColor, fontSize: Strings.textSize, fontFamily: Strings.fontFam),),),
            SizedBox(width: 20.0,),
            TextButton(onPressed: (){switchPage("contact");}, child: Text('Contact', style: TextStyle(decoration: contactDecoration,color: contactColor, fontSize: Strings.textSize, fontFamily: Strings.fontFam),),),


          ],
        ),
        Expanded(child: currentPage),
      ],
    );
  }
}
