import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Container(
        padding:const EdgeInsets.all(30),
        margin: const EdgeInsets.all(30),
        child: Column(
          children: [
            GradiantButton("Hello 1", Colors.blue.shade100, Colors.red.shade500),
          ],
        ),
      ),
    )
  );
}

class GradiantButton extends StatelessWidget{
  const GradiantButton(this.text,this.startColor,this.endColor,{super.key});

  final String text;
  final Color startColor,endColor;


  @override
  Widget build(BuildContext context){
    return Container(
      margin: const EdgeInsets.only(top:20),
      decoration:BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(50)),
        gradient: LinearGradient(
          colors: [startColor,endColor]
        ),
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

class CustomCard extends StatelessWidget {
  final String text;
  final Color color;
  const CustomCard({
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