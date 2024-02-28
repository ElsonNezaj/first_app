import "package:flutter/material.dart";
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 114, 57, 214),
          Color.fromARGB(255, 55, 17, 121),
        ),
      ),
    ),
  );
}
