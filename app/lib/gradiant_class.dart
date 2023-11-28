import 'package:app/text_styles.dart';
import 'package:flutter/material.dart';

//this class is performing inheritance
class GradientContainer extends StatelessWidget {
  //this is a constructor

  const GradientContainer({super.key});
  var activeDiceImage = 'assets/images/Dice-2.png';
  rollDice() {
    activeDiceImage = 'assets/images/Dice-4.png';
    print('Changing image ....')
  }

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
      child: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/Dice-2.png',
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
      )),
    );
  }
}
