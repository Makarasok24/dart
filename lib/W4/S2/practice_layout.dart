
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      home:Scaffold(
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 100),
              color: Colors.blue,
              height: 200,
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Expanded(
                child: 
                  Container(
                  color:Colors.green,
                  height: 100,
                  ),
                ),
              Container(
                color:Colors.pink.shade400,
                width: 100,height: 100,
              ),
            ],),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    color:Colors.yellow,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    color:Colors.yellow,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    color:Colors.yellow,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20,),
            Expanded(
              child: Container(
                color: Colors.pink.shade400,
              )
            )
          ]),
      )
    )
  );
}