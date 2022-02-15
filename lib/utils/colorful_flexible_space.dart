import 'package:colorful/design.dart';

class ColorfulFlexibleSpace extends StatelessWidget {

  final Widget? child;
  const ColorfulFlexibleSpace({
    Key? key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(bottomLeft: Colorful.of(context).appBarRadius, bottomRight: Colorful.of(context).appBarRadius),
          gradient: Colorful.of(context).colorfulGradient,
          boxShadow: Colorful.of(context).colorfulHueShadow,
        ),
        child: child,
      ),
    );
  }
}