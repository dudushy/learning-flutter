import 'dart:math';

import 'package:flutter/material.dart';

import 'package:basics/styled_text.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
    // print('Dice rolled!');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/dice-$currentDiceRoll.png',
              width: 200,
            ),
            SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: rollDice,
              child: StyledText(
                text: 'Roll Dice',
                textColor: Colors.white,
                textSize: 28,
              ),
            ),
          ],
        );
  }
}
