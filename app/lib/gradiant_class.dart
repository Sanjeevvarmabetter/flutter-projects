import 'package:app/dice_roller.dart';

import 'package:flutter/material.dart';

//this class is performing inheritance
class GradientContainer extends StatelessWidget {
  //this is a constructor

  const GradientContainer({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(210, 0, 149, 248),
            Color.fromARGB(211, 225, 4, 225)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
          child: Diceroller(),
      ),
    );
  }
}
