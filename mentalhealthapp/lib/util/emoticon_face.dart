// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class EmotionFaces extends StatelessWidget {
  final String emotionFace;
  const EmotionFaces({super.key, required this.emotionFace});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue[600],
        borderRadius: BorderRadius.circular(16),
      ),
      // padding: EdgeInsets.fromLTRB(24, 18, 24, 18),
      padding: EdgeInsets.fromLTRB(20, 14, 20, 14),
      child: Center(
        child: Text(
          emotionFace,
          style: TextStyle(fontSize: 38, shadows: [
            Shadow(
                color: Colors.black.withOpacity(0.2),
                offset: Offset(1, 1),
                blurRadius: 10)
          ]),
        ),
      ),
    );
  }
}
