import 'package:auto_size_text/auto_size_text.dart';
import 'package:colorful/design.dart';

class ColorfulButton extends StatelessWidget {

  static const miniSize = Size(200.0, 55.0);
  static const smallSize = Size(220.0, 55.0);
  static const standardSize = Size(240.0, 55.0);
  static const bigSize = Size(250.0, 60.0);

  final bool disabled;
  final VoidCallback? onTap;
  final Size size;
  final IconData? icon;
  final Widget? iconOverride;
  final Color? iconColor;
  final String text;
  final Widget? textOverride;
  final Color? textColor;
  final Gradient? gradient;
  final List<BoxShadow>? shadow;
  const ColorfulButton({
    Key? key,
    this.disabled = false,
    this.onTap,
    this.size = standardSize,
    this.icon,
    this.iconOverride,
    this.iconColor,
    this.text = '',
    this.textOverride,
    this.textColor,
    this.gradient,
    this.shadow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: size.width),
      child: SizedBox.expand(
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(25.0)),
            boxShadow: disabled ? null : (shadow ?? Colorful.of(context).colorfulHueShadow),
          ),
          child: ElevatedButton(
            onPressed: disabled ? null : onTap,
            style: ButtonStyle(
              elevation: MaterialStateProperty.all<double>(0),
              shape: MaterialStateProperty.all<OutlinedBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Colorful.of(context).buttonRadius),
                ),
              ),
              backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
              padding: MaterialStateProperty.all<EdgeInsetsGeometry>(const EdgeInsets.all(0.0)),
            ),
            child: Ink(
              decoration: BoxDecoration(
                gradient: disabled ? const LinearGradient(colors: [Colors.black12]) : (gradient ?? Colorful.of(context).colorfulGradient),
                borderRadius: const BorderRadius.all(Radius.circular(25.0)),
              ),
              child: Container(
                height: size.height,
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Row(
                  children: <Widget>[
                    iconOverride ?? Icon(
                      icon,
                      color: iconColor ?? Colorful.of(context).iconColor,
                      size: 35,
                    ),
                    const SizedBox(width: 5,),
                    Expanded(
                      child: textOverride ?? Align(
                        alignment: Alignment.center,
                        child: AutoSizeText(text, maxLines: 1, maxFontSize: 21, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 21, color: textColor ?? Colorful.of(context).iconColor,),),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}