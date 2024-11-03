import 'package:flutter/material.dart';
import 'package:flutter_course/W4/S1/gradiant_button.dart';



void main() {
  runApp(
    MaterialApp(
      home: Container(
        padding:const EdgeInsets.all(30),
        margin: const EdgeInsets.all(30),
        child: Column(
          children: [
            GradiantButton("Hello 4", Colors.blue.shade100, Colors.red.shade500),
            GradiantButton("Hello 5", Colors.blue.shade100, Colors.yellow.shade500),
          ],
        ),
      ),
    )
  );
}


