
import 'package:flutter/material.dart';


void main(List<String> args) {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "My Hobbies",
          ),
          backgroundColor: Colors.blue,
        ),
        body: const Padding(
          padding: EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              HobbyCard(
              icon: Icons.travel_explore,
              title: "Travelling",
              color:Colors.green
              ),
              SizedBox(height: 10,),
              HobbyCard(
                icon: Icons.skateboarding, 
                title: "Skatting",
              ),
              SizedBox(height: 10,),
              HobbyCard(
                icon: Icons.book, 
                title: "Readding",
                color: Colors.pink,
              )
            ],
          ),
        ),
      ),
    ),
  );
}

class HobbyCard extends StatelessWidget {

  final String title;
  final IconData icon;
  final Color color;

  const HobbyCard({
    required this.icon,
    required this.title,
    this.color = Colors.blue,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20)
      ),
      padding: const EdgeInsets.only(top: 30,bottom: 30),
      child: Center(
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20,left: 30),
              child:Icon(
                icon,
                color: Colors.white,
                size:20
              ),
            ),
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20
              ),
            ),
          ],
        ),
      ),
    );
  }
}