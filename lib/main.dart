import 'package:animator_bmi_calc/screens/bmi_calc/Provider/bmi_provider.dart';
import 'package:animator_bmi_calc/screens/bmi_calc/view/bmicalcScreen.dart';
import 'package:animator_bmi_calc/screens/health/view/healthScreen.dart';
import 'package:animator_bmi_calc/screens/splash/view/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => bmiProvider()),
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        // initialRoute: 'health',
        routes: {
          '/':(p0) => splashScreen(),
          'bmi':(p0) => bmicalcScreen(),
          'health':(p0) => healthScreen(),
        },
      ),
    ),
  );
}