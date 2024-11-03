import 'package:flutter/material.dart';

class GradiantButton extends StatelessWidget{
  const GradiantButton(this.text,this.startColor,this.endColor,{super.key});

  final String text;
  final Color startColor,endColor;


  @override
  Widget build(BuildContext context){
    return Container(
      margin: const EdgeInsets.only(top:20),
      decoration:BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(5)),
        gradient: LinearGradient(
          colors: [startColor,endColor]
        ),
      ),
      child:Center(
        child: Text(
          text,
          style:const TextStyle(
            color: Colors.white,
            decoration: TextDecoration.none
          ),
        ),
      ),
    );
  }
}