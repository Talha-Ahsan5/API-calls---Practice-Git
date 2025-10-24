import 'dart:math';

import 'package:flutter/material.dart';
import 'package:my_app/styled_text.dart';

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
  // var activeDiceImage = 'lib/assets/images/dice-1.png';

  void rolldice() {
    // var diceRoll = Random().nextInt(6) + 1; // 0 <> 5
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) +
          1; // 0 <> 5; // Assigning rondimzer as Random() is the best Choice
      // activeDiceImage = 'lib/assets/images/dice-$diceRoll.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'lib/assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(
          //alternative approch for padding
          height: 25,
        ),


        ElevatedButton.icon(
        onPressed: rolldice,
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.blue,
          backgroundColor: Colors.black,
        ),
        icon: const Icon(Icons.drag_indicator_outlined),
        label: const StyledText('Roll Dice'),)
        
      ],
    );
  }
}
