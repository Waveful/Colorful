import 'package:colorful/design.dart';

class ColorfulFAB extends StatelessWidget {

  final VoidCallback? onTap;
  final String? tooltip;
  final String? heroTag;
  final double fabScale;
  final double iconScale;
  final IconData? icon;
  final Gradient? gradient;
  final List<BoxShadow>? shadow;
  const ColorfulFAB({
    Key? key,
    this.onTap,
    this.tooltip,
    this.heroTag,
    this.fabScale = 1,
    this.iconScale = 0.65,
    this.icon,
    this.gradient,
    this.shadow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: fabScale,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(30.0)),
          boxShadow: shadow ?? Colorful.of(context).colorfulHueShadow,
        ),
        child: FloatingActionButton(
          elevation: 0,
          backgroundColor: Colors.transparent,
          onPressed: onTap,
          tooltip: tooltip,
          heroTag: heroTag ?? UniqueKey().toString(),
          child: SizedBox.expand(
            child: Ink(
              decoration: BoxDecoration(
                gradient: gradient ?? Colorful.of(context).colorfulGradient,
                shape: BoxShape.circle,
              ),
              child: Transform.scale(
                scale: iconScale * 1.6,
                child: Icon(icon, size: 35, color: Colorful.of(context).iconColor,),
              ),
            ),
          ),
        ),
      ),
    );
  }
}