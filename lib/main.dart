import 'package:flutter/material.dart';
import 'package:learning/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 52, 1, 96),
          Color.fromARGB(255, 121, 10, 121),
        ),
      ),
    ),
  );
}
