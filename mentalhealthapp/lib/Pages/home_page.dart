// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mentalhealthapp/util/emoticon_face.dart';
import 'package:mentalhealthapp/util/exercise_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Messages"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                children: [
                  //greetings
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Hi, Shivam
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hi, Shivam!',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            '29 June 2023',
                            style: TextStyle(color: Colors.blue[200]),
                          )
                        ],
                      ),
                      //Notifications
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(16),
                        ),
                        padding: EdgeInsets.all(12),
                        child: Icon(
                          Icons.notifications,
                          size: 27,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 30,
                  ),

                  //search bar
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(12)),
                    padding: EdgeInsets.all(14),
                    child: Row(children: [
                      Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 33,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Search',
                        style: TextStyle(color: Colors.blue[200], fontSize: 18),
                      ),
                    ]),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('How do you feel?',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )),
                      Icon(
                        Icons.more_horiz_outlined,
                        size: 26,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),

                  //4 different faces
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // Bad
                      Column(
                        children: [
                          EmotionFaces(emotionFace: '😞'),
                          SizedBox(height: 10),
                          Text('Bad', style: TextStyle(color: Colors.white)),
                        ],
                      ),

                      SizedBox(width: 16), // Add spacing between buttons

                      // Fine
                      Column(
                        children: [
                          EmotionFaces(emotionFace: '🙂'),
                          SizedBox(height: 10),
                          Text('Fine', style: TextStyle(color: Colors.white)),
                        ],
                      ),

                      SizedBox(width: 16), // Add spacing between buttons

                      // Well
                      Column(
                        children: [
                          EmotionFaces(emotionFace: '😃'),
                          SizedBox(height: 10),
                          Text('Well', style: TextStyle(color: Colors.white)),
                        ],
                      ),

                      SizedBox(width: 16), // Add spacing between buttons

                      // Amazing
                      Column(
                        children: [
                          EmotionFaces(emotionFace: '🤩'),
                          SizedBox(height: 10),
                          Text('Amazing',
                              style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
                child: Container(
              padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
              decoration: BoxDecoration(
                color: Colors.grey[100],
              ),
              child: Center(
                child: Column(children: [
                  //Excersise heading
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Exercises',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Icon(Icons.more_horiz_outlined)
                    ],
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  //list view of exercises
                  Expanded(
                      child: ListView(
                    children: [
                      ExerciseTile(
                          exercisetitle: 'Speaking Exercise',
                          noOfExercises: '20 Exercises',
                          exerciseIcon: Icons.favorite,
                          iconBgColor: Colors.amber),
                      SizedBox(
                        height: 10,
                      ),
                      ExerciseTile(
                          exercisetitle: 'Reading Exercises',
                          noOfExercises: '14 Exercises',
                          exerciseIcon: Icons.bookmark,
                          iconBgColor: Colors.blue),
                      SizedBox(
                        height: 10,
                      ),
                      ExerciseTile(
                          exercisetitle: 'Reading Exercises',
                          noOfExercises: '14 Exercises',
                          exerciseIcon: Icons.bookmark,
                          iconBgColor: Colors.blue),
                      SizedBox(
                        height: 10,
                      ),
                      ExerciseTile(
                          exercisetitle: 'Reading Exercises',
                          noOfExercises: '14 Exercises',
                          exerciseIcon: Icons.bookmark,
                          iconBgColor: Colors.blue),
                    ],
                  ))
                ]),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
