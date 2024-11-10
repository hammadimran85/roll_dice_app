import 'dart:math';

import 'package:flutter/material.dart';

final randomNumber = Random();

class RollDice extends StatefulWidget {
  const RollDice({super.key});

  @override
  State<RollDice> createState() => _RollDiceState();
}

class _RollDiceState extends State<RollDice> {
  var currentDice = 2;
  var key = UniqueKey();

  void rollDice() {
    setState(() {
      currentDice = randomNumber.nextInt(6) + 1;
      key = UniqueKey();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          transitionBuilder: (child, animation) {
            return RotationTransition(
              turns: animation,
              child: FadeTransition(
                opacity: animation,
                child: child,
              ),
            );
          },
          child: Image.asset(
            'lib/assets/images/dice-$currentDice.png',
            key: key,
            width: 200,
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          child: ElevatedButton(
            onPressed: rollDice,
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black54,
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 8.0)),
            child: const Text(
              'Roll Dice',
              style: TextStyle(fontSize: 16.0, color: Colors.white),
            ),
          ),
        )
      ],
    );
  }
}
