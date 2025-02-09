import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  var startAlignment = Alignment.topLeft;
  //optimization technqi
  GradientContainer(this.colors, {super.key});
  final List<Color> colors;
 

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: colors, begin: startAlignment, end: Alignment.bottomLeft),
      ),
      child: Center(
        child: DiceRoller()
      ),
    );
  }
}
