import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';
class CustomAppBar extends StatelessWidget {
   CustomAppBar({Key? key,required this.iconData1,required this.iconData2,required this.title}) : super(key: key);
IconData iconData1,iconData2;
String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NeumorphicButton(
            onPressed: () {
              //print("person");
              if(iconData1==Icons.arrow_back_ios){
                Navigator.of(context, rootNavigator: true).pop(context);
              }else{
                print("This IS HomePage");
              }
            },
            style: NeumorphicStyle(
              //shape: NeumorphicShape.flat,
                boxShape: NeumorphicBoxShape.circle()),
            child: Icon(
              // Icons.dashboard_outlined,
              iconData1,
              size: 25,
            ),
          ),
          Text(title,style: GoogleFonts.lato(fontSize: 20),),
          NeumorphicButton(
            onPressed: (){},
            style: NeumorphicStyle(
              boxShape: NeumorphicBoxShape.circle(),

            ),
            child: Icon(
              // Icons.person,
              iconData2,
              size: 25,
            ),
          )
        ],
      ),
    );
  }
}
