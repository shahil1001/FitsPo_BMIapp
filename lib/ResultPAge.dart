import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import 'CustonAppBar.dart';
class MyResultPage extends StatelessWidget {
   MyResultPage({Key? key,required this.Bmi,required this.result,required this.percentage}) : super(key: key);

String Bmi,result;
double percentage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
            child: CustomAppBar(
              title: "Result",
              iconData1: Icons.arrow_back_ios,
              iconData2: FontAwesomeIcons.moon,
            ),
          ),
          Expanded(
            flex: 3,
            child: CircularPercentIndicator(
              progressColor: Color(0xff56cfdb),
              radius: 150,
              percent: percentage,
              lineWidth: 20,
              circularStrokeCap: CircularStrokeCap.round,
              center: Text(
             Bmi,
                style: GoogleFonts.lato(fontSize: 50),
              ),
            ),
          ),
          Expanded(
              child: Text(

                result,
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(fontSize: 25),
              )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap:(){

                Navigator.of(context, rootNavigator: true).pop(context);
              },
              child: Container(
                width: 180,
                height: 50,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.center,
                      end: Alignment.center,
                      colors: [
                        Colors.white,
                        Color(0xff56cfdd),
                      ]),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white,
                      offset
                          : Offset(-5.0, -5.0),
                      blurRadius: 16.0,
                    ),
                    BoxShadow(
                      color: Colors.black,
                      offset
                          : Offset(5.0, 5.0),
                      blurRadius: 16.0,
                    ),
                  ],
                  color: Color(0xFFEFEEEE),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Center(
                    child: Text(
                      "ReCalculate",
                      style: GoogleFonts.lato(fontSize: 20),
                    )),
              ),
            ),
          )
        ],
      ),
    );




  }
}


