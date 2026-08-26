import 'package:flutter/material.dart';
import 'package:points_counter/add_button.dart';
import 'package:points_counter/team_points.dart';

class PointsCount extends StatefulWidget {
  @override
  State<PointsCount> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCount> {
  int _pointsTeamA = 0, _pointsTeamB = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        children: [
          IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TeamPoints(
                  teamName: "Team A",
                  currentPoints: _pointsTeamA,
                  addOnePoint: () {
                    setState(() {
                      _pointsTeamA += 1;
                    });
                  },
                  addTwoPoint: () {
                    setState(() {
                      _pointsTeamA += 2;
                    });
                  },
                  addThreePoint: () {
                    setState(() {
                      _pointsTeamA += 3;
                    });
                  },
                ),

                const VerticalDivider(
                  color: Colors.grey,
                  thickness: 2,
                  indent: 20,
                  endIndent: 20,
                ),

                TeamPoints(
                  teamName: "Team B",
                  currentPoints: _pointsTeamB,
                  addOnePoint: () {
                    setState(() {
                      _pointsTeamB += 1;
                    });
                  },
                  addTwoPoint: () {
                    setState(() {
                      _pointsTeamB += 2;
                    });
                  },
                  addThreePoint: () {
                    setState(() {
                      _pointsTeamB += 3;
                    });
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 80),
          AddButton(
            press: () {
              setState(() {
                _pointsTeamB = 0;
                _pointsTeamA = 0;
              });
            },
            text: "Reset",
          ),
        ],
      ),
    );
  }
}
