import 'package:flutter/material.dart';
import 'package:points_counter/add_button.dart';

class TeamPoints extends StatelessWidget {
  final VoidCallback addOnePoint;
  final VoidCallback addTwoPoint;
  final VoidCallback addThreePoint;
  final int currentPoints;
  final String teamName;

  const TeamPoints({
    required this.teamName,
    required this.addOnePoint,
    required this.addTwoPoint,
    required this.addThreePoint,
    required this.currentPoints,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("$teamName", style: TextStyle(fontSize: 30)),
        ConstrainedBox(
          constraints: BoxConstraints(minHeight: 300),
          child: Center(child: Text("$currentPoints", style: TextStyle(fontSize: 150))),
        ),
        AddButton(
          text: "1 points",
          press: addOnePoint,
          icon: Icon(Icons.add, color: Colors.black),
        ),
        AddButton(
          text: "2 points",
          press: addTwoPoint,
          icon: Icon(Icons.add, color: Colors.black),
        ),

        AddButton(
          text: "3 points",
          press: addThreePoint,
          icon: Icon(Icons.add, color: Colors.black),
        ),
      ],
    );
  }
}
