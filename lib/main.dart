import 'package:flutter/material.dart';
import 'package:points_counter/points_counter_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  PointsCounterScreen(),
    );
  }
}
