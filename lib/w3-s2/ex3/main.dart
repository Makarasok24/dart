import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Container(
        padding:const EdgeInsets.all(30),
        margin: const EdgeInsets.all(30),
        color:Colors.blue,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top:20),
              decoration:BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                color: Colors.blue[100],
              ),
              child:const Center(
                child: Text(
                  "OOP",
                  style: TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.none
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top:20),
              decoration:BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                color: Colors.blue[300],
              ),
              child:const Center(
                child: Text(
                  "DART",
                  style: TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.none
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top:20),
              decoration:BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                  colors: <Color> [
                    Colors.blue.shade300,
                    Colors.blue.shade600,
                  ],
                ),
              ),
              child:const Center(
                child: Text(
                  "FLUTTER",
                  style: TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.none
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    )
  );
}