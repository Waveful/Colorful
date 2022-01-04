import 'package:colorful/design.dart';
import 'package:flutter/material.dart';

enum StandardCardElevation { primary, onPrimary, onSecondary }

class StandardCard extends StatelessWidget {

  final StandardCardElevation? elevation;
  final BorderRadius? radius;
  final List<BoxShadow>? shadow;
  final Color? color;
  final BoxShape? shape;
  final Widget? child;
  const StandardCard({
    Key? key,
    this.elevation,
    this.radius,
    this.shadow,
    this.color,
    this.shape,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: shape == null ? radius ?? ColorfulProvider.themeOf(context).standardBorderRadius : null,
          boxShadow: shadow ?? ColorfulProvider.themeOf(context).standardShadow,
          shape: shape != null ? shape! : BoxShape.rectangle,
        ),
        child: Card(
          elevation: 0,
          shape: _shapeBorderFromBoxShape ?? RoundedRectangleBorder(borderRadius: radius ?? ColorfulProvider.themeOf(context).standardBorderRadius,),
          color: color,
          child: child,
        ),
      ),
    );
  }

  ShapeBorder? get _shapeBorderFromBoxShape {
    if(shape == null) {
      return null;
    }
    switch(shape!) {
      case BoxShape.rectangle:
        return const RoundedRectangleBorder();
      case BoxShape.circle:
        return const CircleBorder();
    }
  }
}