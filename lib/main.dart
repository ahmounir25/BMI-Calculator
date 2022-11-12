import 'package:flutter/material.dart';
import 'package:untitled/BMI_Calc.dart';
import 'package:untitled/resultScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:BmiCalculator() ,
      debugShowCheckedModeBanner: false,
    );
  }
}


