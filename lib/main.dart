import "package:flutter/material.dart";

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 91, 44, 173),
            Color.fromARGB(255, 55, 17, 121)
          ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
          child: const Center(
            child: Text(
              "Hello World",
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
