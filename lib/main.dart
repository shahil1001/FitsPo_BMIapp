

import 'package:fitspo/BmiBrain.dart';
import 'package:fitspo/Constraint.dart';
import 'package:fitspo/CustonAppBar.dart';
import 'package:fitspo/ResultPAge.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(scaffoldBackgroundColor: SBgcolor),
    debugShowCheckedModeBanner: false,
    home: Fitspo(),
  ));
}

class Fitspo extends StatefulWidget {
  const Fitspo({Key? key}) : super(key: key);

  @override
  State<Fitspo> createState() => _FitspoState();
}

class _FitspoState extends State<Fitspo> {
  bool Maleselected = false;
  bool Femaleselected = false;
  bool calculateButton = false;
  double height = 150;
  int weight = 62;
  int age = 26;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SafeArea(
            child: CustomAppBar(
              title: 'BMI Calculater',
              iconData1: Icons.dashboard_outlined,
              iconData2: Icons.person,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          Maleselected = !Maleselected;
                        });
                      },
                      child: Container(
                        width: 80,
                        height: 50,
                        decoration: BoxDecoration(
                          gradient: Maleselected
                              ? LinearGradient(
                              begin: Alignment.center,
                              end: Alignment.center,
                              colors: [
                                Colors.white,
                                Color(0xff56cfdd),
                              ])
                              : null,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white,
                              offset: Maleselected
                                  ? Offset(0, 0)
                                  : Offset(-5.0, -5.0),
                              blurRadius: 16.0,
                            ),
                            BoxShadow(
                              color: Colors.black,
                              offset: Maleselected
                                  ? Offset(0, 0)
                                  : Offset(5.0, 5.0),
                              blurRadius: 16.0,
                            ),
                          ],
                          color: Color(0xFFEFEEEE),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Center(
                            child: Text(
                              "Male",
                              style: GoogleFonts.lato(fontSize: 20),
                            )),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          Femaleselected = !Femaleselected;
                        });
                      },
                      child: Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          gradient: Femaleselected
                              ? LinearGradient(
                              begin: Alignment.center,
                              end: Alignment.center,
                              colors: [
                                Colors.white,
                                Color(0xff56cfdd),
                              ])
                              : null,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white,
                              offset: Femaleselected
                                  ? Offset(0, 0)
                                  : Offset(-5.0, -5.0),
                              blurRadius: 10.0,
                            ),
                            BoxShadow(
                              color: Colors.black,
                              offset: Femaleselected
                                  ? Offset(0, 0)
                                  : Offset(5.0, 5.0),
                              blurRadius: 10.0,
                            ),
                          ],
                          color: Color(0xFFEFEEEE),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Center(
                          child: Text(
                            "Female",
                            style: GoogleFonts.lato(fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ), // ROW inside for male and female button
          Container(
            margin: EdgeInsets.only(top: 25),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.8),
                                offset: Offset(-5, -5),
                                blurRadius: 10.0),
                            BoxShadow(
                                color: Colors.white.withOpacity(0.8),
                                offset: Offset(5, 5),
                                spreadRadius: 2,
                                blurRadius: 10)
                          ]),
                      height: 500,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Height",
                              style: GoogleFonts.lato(fontSize: 20),
                            ),
                          ),
                          //TODO: my slider will go here

                          Expanded(
                            child: SfSlider.vertical(
                                activeColor: Color(0xff56CFDB),
                                inactiveColor: Colors.grey[300],
                                value: height,
                                min: 100,
                                max: 500,
                                showTicks: true,
                                showLabels: true,
                                showDividers: true,
                                thumbIcon: Icon(
                                  Icons.height,
                                  size: 20,
                                  color: Colors.black,
                                ),
                                minorTicksPerInterval: 5,
                                interval: 50,
                                enableTooltip: true,
                                onChanged: (dynamic val) {
                                  setState(() {
                                    height = val;
                                  });

                                }),
                          ),
                        ],
                      ),
                    ), // Container for my slider and height text
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      height: 500,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.8),
                                    offset: Offset(-4, -4),
                                    spreadRadius: 1,
                                    blurRadius: 10),
                                BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(4, 4),
                                    spreadRadius: 1,
                                    blurRadius: 10),
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(18),
                            ),
                            width: 200,
                            height: 245,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "Weight",
                                  style: GoogleFonts.lato(fontSize: 18),
                                ),
                                Text(
                                  weight.toString(),
                                  style: GoogleFonts.lato(
                                      fontSize: 80,
                                      fontWeight: FontWeight.w600),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    NeumorphicButton(
                                      onPressed: () {
                                        setState(() {
                                          weight++;
                                        });
                                      },
                                      style: NeumorphicStyle(
                                        boxShape: NeumorphicBoxShape.circle(),
                                      ),
                                      child: Icon(
                                        FontAwesomeIcons.plus,
                                        size: 20,
                                      ),
                                    ),
                                    NeumorphicButton(
                                      onPressed: () {
                                        setState(() {
                                          weight--;
                                        });
                                      },
                                      style: NeumorphicStyle(
                                        boxShape: NeumorphicBoxShape.circle(),
                                      ),
                                      child: Icon(
                                        FontAwesomeIcons.minus,
                                        size: 20,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.8),
                                    offset: Offset(-4, -4),
                                    spreadRadius: 1,
                                    blurRadius: 10),
                                BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(4, 4),
                                    spreadRadius: 1,
                                    blurRadius: 10),
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(18),
                            ),
                            width: 200,
                            height: 245,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "Age",
                                  style: GoogleFonts.lato(fontSize: 18),
                                ),
                                Text(
                                  age.toString(),
                                  style: GoogleFonts.lato(
                                      fontSize: 80,
                                      fontWeight: FontWeight.w600),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    NeumorphicButton(
                                      onPressed: () {
                                        setState(() {
                                          age++;
                                        });
                                      },
                                      style: NeumorphicStyle(
                                        boxShape: NeumorphicBoxShape.circle(),
                                      ),
                                      child: Icon(
                                        FontAwesomeIcons.plus,
                                        size: 20,
                                      ),
                                    ),
                                    NeumorphicButton(
                                      onPressed: () {
                                        setState(() {
                                          age--;
                                        });
                                      },
                                      style: NeumorphicStyle(
                                        boxShape: NeumorphicBoxShape.circle(),
                                      ),
                                      child: Icon(
                                        FontAwesomeIcons.minus,
                                        size: 20,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ), // Another container for all my weight and age
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                CalculateBmi calc = CalculateBmi(weight.toDouble(), height);
                setState(() {
                  calculateButton = !calculateButton;
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MyResultPage(
                                Bmi: calc.BMI(),
                                result: calc.ResultLine(),
                                percentage: calc.Percentage(),
                              )));
                });
              },
              child: Container(
                margin: EdgeInsets.only(top: 20),
                height: 50,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.8),
                          spreadRadius: 1,
                          blurRadius: 10,
                          offset:
                          calculateButton ? Offset(0, 0) : Offset(-4, -4)),
                      BoxShadow(
                          color: Colors.white,
                          spreadRadius: 1,
                          blurRadius: 10,
                          offset:
                          calculateButton ? Offset(0, 0) : Offset(4, 4)),
                    ],
                    color: Color(0xff56cfdb),
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                    child: Text(
                      "Let's Begin",
                      style: GoogleFonts.lato(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    )),
              ),
            ),
          )
        ],
      ),

      // backgroundColor: Colors.grey[300],
    );
  }
}
