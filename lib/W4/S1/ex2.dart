import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: const Text(
           "Products",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color:Colors.white,
            ),
          ),
          backgroundColor: Colors.pink[200],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/w4-s1-ex2/dart.png"
                    ),
                    const Padding(
                      padding:  EdgeInsets.only(left: 20),
                      child: Text(
                        "Dart",
                        style: TextStyle(
                          fontSize: 20,
                          
                        ),
                      ),
                    ),
                    const Padding(
                      padding:  EdgeInsets.only(left: 20),
                      child: Text(
                        "Description"
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    )
  );
}