import 'package:flutter/material.dart';
import 'dart:math';
  final randomizer = Random();

class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    // TODO: implement createState
    return _DiceRollerState();
  }
}
class _DiceRollerState extends State<DiceRoller>{
   var activeDiceImage = 'assets/dice-2.png';
  void rollDice() {
    var num =randomizer.nextInt(6) + 1;
    // call special function -- availabe in State class

    setState((){
    activeDiceImage = 'assets/dice-$num.png';

    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(activeDiceImage, width: 200),
            const SizedBox(height: 20), // size of container
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                  // padding: EdgeInsets.only(top:20),
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(fontSize: 28)),
              child: const Text('Roll'),
            )
          ],
        );
  }
}