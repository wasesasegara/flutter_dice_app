import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random();

class DiceContent extends StatefulWidget {
  const DiceContent({super.key});

  @override
  State<DiceContent> createState() => _DiceContentState();
}

class _DiceContentState extends State<DiceContent> {
  var diceValue = 1;

  rollDice() {
    setState(() {
      diceValue = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$diceValue.png',
          width: 200,
        ),
        TextButton(
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(top: 20),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          onPressed: rollDice,
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
