import 'package:flutter/material.dart';
import 'package:points_counter/points_count.dart';

class PointsCounterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffff9900),
        title: Text("Points counter", style: TextStyle(color: Colors.white)),
      ),
      body: PointsCount(),
    );
  }
}
