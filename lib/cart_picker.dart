import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random();

class CardPicker extends StatefulWidget {
  const CardPicker({super.key});

  @override
  State<CardPicker> createState() {
    return _CardPickerState();
  }
}

class _CardPickerState extends State<CardPicker> {
  var currentCardType = "diamonds";
  var currentCardNumber = 2;
  static const cardsArray = ["diamonds", "spades", "hearts", "clubs"];

  void getCard() {
    setState(() {
      currentCardNumber = randomizer.nextInt(13) + 1;
      currentCardType = cardsArray[randomizer.nextInt(4) + 1];
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/cards/$currentCardType-$currentCardNumber.png',
          width: 200,
        ),
        const SizedBox(
          height: 50,
        ),
        ElevatedButton(
          onPressed: getCard,
          style: ElevatedButton.styleFrom(
            elevation: 12,
            fixedSize: const Size(200, 50),
          ),
          child: const Text(
            "Pick a card",
            style: TextStyle(fontSize: 22),
          ),
        )
      ],
    );
  }
}
