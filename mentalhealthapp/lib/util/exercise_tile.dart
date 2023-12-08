// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ExerciseTile extends StatelessWidget {
  final String exercisetitle;
  final String noOfExercises;
  final IconData exerciseIcon;
  final Color iconBgColor;
  const ExerciseTile(
      {super.key,
      required this.exercisetitle,
      required this.noOfExercises,
      required this.exerciseIcon,
      required this.iconBgColor});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(18, 16, 18, 16),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: iconBgColor),
                padding: EdgeInsets.all(14),
                child: Icon(
                  exerciseIcon,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              SizedBox(
                width: 18,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //title
                  Text(
                    exercisetitle,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  //subitile
                  Text('10 Exercises',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey[600])),
                ],
              ),
            ],
          ),
          Icon(Icons.more_horiz_outlined)
        ]));
  }
}
