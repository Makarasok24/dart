import 'dart:math';

import 'package:flutter/material.dart';

// const String diceImage1 = 'assets/w4-s2/dice-1.png';
// const String diceImage2 = 'assets/w4-s2/dice-2.png';
// const String diceImage4 = 'assets/w4-s2/dice-4.png';
// const String diceImage5 = 'assets/w4-s2/dice-5.png';
// const String diceImage6 = 'assets/w4-s2/dice-6.png';

// String activeDiceImage = diceImage2;

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  int diceNo = 2;
  void rollDice() {
     //  Display the dice 4 !
    setState(() {
      diceNo = Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          onTap: (){
            rollDice();
          },
          child: Image.asset(
            "assets/w4-s2/dice-$diceNo.png",
            width: 200,
          ),
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}

void main() => runApp(const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: Center(child: DiceRoller()),
      ),
    ));