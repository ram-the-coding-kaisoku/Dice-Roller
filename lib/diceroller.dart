import 'dart:math';
import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var dicenum = 1;

  void rolldice() {
    setState(() {
      dicenum = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$dicenum.png',
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        // text button
        TextButton(
          onPressed: rolldice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
          ),
          child: const Text(
            "Roll Dice",
            style: TextStyle(
              fontSize: 28,
            ),
          ),
        )
      ],
    );
  }
}
