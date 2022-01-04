import 'package:colorful/design.dart';
import 'package:flutter/material.dart';

class GradientWrapper extends StatelessWidget {

  final Gradient? gradient;
  final Widget child;
  const GradientWrapper({
    Key? key,
    this.gradient,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect bounds) => _createGradientShader(context, bounds),
      child: child,
    );
  }

  Shader _createGradientShader(BuildContext context, Rect bounds) {
    return (gradient ?? ColorfulProvider.themeOf(context).colorfulGradient).createShader(Offset.zero & bounds.size);
  }
}