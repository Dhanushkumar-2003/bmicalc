import 'dart:math';

class Calculator {
  Calculator({
    required this.height,
    required this.weight,
  });
  final int height;
  final int weight;

  double bmi = 44;
  String calcbmi() {
    bmi = weight / pow(height / 100, 2);
    return bmi.toStringAsFixed(1);
  }

  String result() {
    if (bmi >= 25) {
      return 'overwight';
    } else if (bmi > 18) {
      return 'normal';
    } else {
      return "underweight";
    }
  }

  String value() {
    if (bmi >= 25) {
      return 'your bmi result is$bmi is very high, please take care your health';
    } else if (bmi > 18) {
      return 'your bmi result is $bmi is  good ,please maintain your health';
    } else {
      return "your bmi result is $bmi is quite low, eat good food";
    }
  }
}
