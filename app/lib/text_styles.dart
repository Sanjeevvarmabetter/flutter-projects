import 'package:flutter/material.dart';

class Textstyle extends StatelessWidget {
  @override
  const Textstyle({super.key});

  Widget build(context) {
    return const Text(
      'Hello Sanjeev',
      style: TextStyle(
        fontSize: 40,
        color: Color.fromARGB(255, 229, 225, 225),
      ),
    );
  }
}
