import 'dart:async';

import 'package:animator_bmi_calc/screens/bmi_calc/view/bmicalcScreen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => bmicalcScreen()));
    });
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 230,
              width: 200,
              alignment: Alignment.bottomCenter,
              child: Column(
                children: [
                  Text("Calculate your BMI",
                      style: TextStyle(
                          color: Colors.blueGrey.shade700, fontSize: 20)),
                  Lottie.asset('assets/json/loading.json'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
