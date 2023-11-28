import 'package:flutter/material.dart';
import 'dart:math';

class Diceroller extends StatefulWidget {
  const Diceroller({super.key});
  @override
  State<Diceroller> createState() {
    return _Dicerollerstate();
  }
}

//this underscore is this class is only useful in this file even though if we import

class _Dicerollerstate extends State<Diceroller> {
  var currentdiceroll = 2;

  // var activeDiceImage = 'assets/images/Dice-2.png';
  rollDice() {

    setState(() {
      currentdiceroll = Random().nextInt(6) + 1;
      // activeDiceImage = 'assets/images/Dice-$diceroll.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/Dice-$currentdiceroll.png',
          width: 200,
        ),
        const SizedBox(height: 40),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: TextStyle(
              fontSize: 29,
            ),
          ),
          child: Text('Roll Dice'),
        )
      ],
    );
  }
}
