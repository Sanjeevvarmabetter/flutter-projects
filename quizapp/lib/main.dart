import 'package:flutter/material.dart';
import 'package:quizapp/startscreen.dart';

main() {
  runApp(
     MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 36, 12, 65),
              Color.fromARGB(42, 98, 32, 242),
            ],
            begin:Alignment.topLeft,
            end:Alignment.bottomRight,
          ),
          ),
          child: const StartScreen(),
          ),
      ),
    ),
  );
}
