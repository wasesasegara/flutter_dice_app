import 'package:flutter/material.dart';
import 'package:flutter_dice_app/styled_text.dart';

const _startAlignment = Alignment.topCenter;
const _endAlignment = Alignment.bottomCenter;
const _startColor = Colors.blueGrey;
const _endColor = Colors.grey;

class GradientContainer extends StatelessWidget {
  GradientContainer(this.text, {super.key});

  String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: _startAlignment,
          end: _endAlignment,
          colors: [_startColor, _endColor],
        ),
      ),
      child: StyledText(text),
    );
  }
}
