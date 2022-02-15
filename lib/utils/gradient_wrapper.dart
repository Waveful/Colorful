import 'package:colorful/design.dart';

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
    return (gradient ?? Colorful.of(context).colorfulGradient).createShader(Offset.zero & bounds.size);
  }
}