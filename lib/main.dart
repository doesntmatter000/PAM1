import 'package:flutter/material.dart';
import 'package:lattest/components/HeaderSection/header.dart';
import 'package:lattest/components/InputSection/input_section.dart';
import 'package:lattest/components/ResultSection/result_section.dart';
import 'components/ButtonsSexSection/buttons_sex_section.dart';
import 'components/WeightSection/weight_section.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool sexState = true;
  int weight = 70;
  int age = 23;
  String height = "0";
  String weightCat = " ";

  void setHeight(String value) {
    setState(() {
      height = value;
    });
  }

  void toggleSexState() {
    setState(() {
      sexState = !sexState;
    });
  }

  String _bmiCategory(double bmi) {
    if (bmi < 18.5) {
      return 'Underweight';
    } else if (bmi >= 18.5 && bmi < 24.9) {
      return 'Normal weight';
    } else if (bmi >= 25 && bmi < 29.9) {
      return 'Overweight';
    } else if (bmi >= 30 && bmi < 34.9) {
      return 'Obesity Class I';
    } else if (bmi >= 35 && bmi < 39.9) {
      return 'Obesity Class II';
    } else {
      return 'Obesity Class III';
    }
  }

  void resultFunc() {
    double result = weight / (int.parse(height) * int.parse(height));

    String finalResult = _bmiCategory(result);
    
    setState(() {
      weightCat = finalResult;
    });
  }

  void changeWeigth(bool a) {
    setState(() {
      if (a == true) {
        weight = ++weight;
      } else {
        weight = --weight;
      }
    });
  }

  void changeAge(bool a) {
    setState(() {
      if (a == true) {
        age = ++age;
      } else {
        age = --age;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: const Header(),
        backgroundColor: const Color(0xFFCBD3E1),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ButtonsSexSection(sexState: sexState, onPressed: toggleSexState),
                WeightSection(weight: weight, changeWeight: changeWeigth, age: age, changeAge: changeAge,),
                InputSection(changeWeight: setHeight,),
                ResultSection(resultFunc: resultFunc, result: weightCat)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
