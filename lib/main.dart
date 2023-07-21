import 'package:flutter/material.dart';
import 'package:flutter_dice_app/gradient_container.dart';
import 'package:flutter_dice_app/styled_text.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        // body: GradientContainer(
        //   colors: const [Colors.blueGrey, Colors.grey],
        //   child: StyledText('Hello world!'),
        // ),
        // body: GradientContainer.purple(child: StyledText('Hello World!')),
        body: GradientContainer.purple(child: Image.asset('assets/images/dice-1.png')),
      ),
    ),
  );
}
