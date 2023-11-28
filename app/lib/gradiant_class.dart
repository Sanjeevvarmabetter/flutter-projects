import 'package:app/text_styles.dart';
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
            Color.fromARGB(211, 100, 31, 99),
            Color.fromARGB(212, 54, 6, 54)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: Textstyle(),
      ),
    );
  }
}