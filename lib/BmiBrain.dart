import 'dart:math';

import 'main.dart';
class CalculateBmi {
  double weight, height;

  CalculateBmi(this.weight, this.height);

  late double _bmi;

  String BMI() {
    _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }
  String ResultLine(){


    if (_bmi < 18.5) {
      return "Eat a lot more You're skinny ";
    } else if ((_bmi) >= 18.5 && (_bmi) <= 24.9) {
      return "Perfect! Good Job You're normal";

    } else if (_bmi >= 25 && _bmi <= 29.9) {
      return "Opps Your're Overweight Do some simple Excercise ";
      //b = "Overweight";
    } else {
      return "You're too Obese, Control your diet.. ";
      //  b = "Obese";
    }

  }
double Percentage(){
  if (_bmi < 18.5) {
    return 0.25;
  } else if ((_bmi) >= 18.5 && (_bmi) <= 24.9) {
    return 0.7;

  } else if (_bmi >= 25 && _bmi <= 29.9) {
    return 0.2;
    //b = "Overweight";
  } else {
    return 0.1;
    //  b = "Obese";
  }
}

}
