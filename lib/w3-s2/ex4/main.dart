import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Container(
        padding:const EdgeInsets.all(30),
        margin: const EdgeInsets.all(30),
        child: Column(
          children: [
            CustomCard(text: "OOP",color: Colors.blue.shade100),
            CustomCard(text: "DART",color: Colors.blue.shade300),
            CustomCard(text: "FLUTTER",color: Colors.blue.shade600),
          ],
        ),
      ),
    )
  );
}

class CustomCard extends StatelessWidget {
  String text;
  Color color;
   CustomCard({
    super.key,
    required this.text,
    this.color = Colors.blue
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top:20),
      decoration:BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(50)),
        color: color,
      ),
      child:Center(
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            decoration: TextDecoration.none
          ),
        ),
      ),
    );
  }
}