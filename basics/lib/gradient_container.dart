import 'package:flutter/material.dart';

import 'package:basics/dice_roller.dart';

Alignment startAlignment = Alignment.topLeft;
Alignment endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});

  const GradientContainer.purple({super.key})
    : colors = const [Colors.deepPurple, Colors.deepPurpleAccent];

  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: DiceRoller()
      ),
    );
  }
}
