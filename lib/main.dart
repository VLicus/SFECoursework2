import 'package:flutter/material.dart';
import 'package:sfe_cw2_api_tester/home_screen.dart';
import 'package:sfe_cw2_api_tester/weather_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}