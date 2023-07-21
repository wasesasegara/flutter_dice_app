import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({
    super.key,
    this.startAlignment = Alignment.topCenter,
    this.endAlignment = Alignment.bottomCenter,
    required this.child,
    required this.colors,
  });

  GradientContainer.purple({
    super.key,
    this.startAlignment = Alignment.topCenter,
    this.endAlignment = Alignment.bottomCenter,
    required this.child,
  })
  : colors = [Colors.deepPurple, Colors.indigo];

  final Widget child;
  final Alignment startAlignment;
  final Alignment endAlignment;
  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: startAlignment,
          end: endAlignment,
          colors: colors,
        ),
      ),
      child: child,
    );
  }
}
