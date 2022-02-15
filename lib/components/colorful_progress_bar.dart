import 'package:colorful/design.dart';

typedef QuantityUnitBuilder = String Function(int quantity);

class ColorfulProgressBar extends StatelessWidget {

  final int progress;
  final int total;
  final bool showText;
  final QuantityUnitBuilder? progressUnitBuilder;
  final Curve interpolationCurve;
  const ColorfulProgressBar({
    Key? key,
    required this.progress,
    required this.total,
    this.showText = false,
    this.progressUnitBuilder,
    this.interpolationCurve = Curves.linear,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double ratio = interpolationCurve.transform((progress / total).clamp(0.0, 1.0));
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final double textPos = (ratio * constraints.maxWidth) - (constraints.maxWidth / 2);
        return Stack(
          alignment: Alignment.center,
          clipBehavior: Clip.none,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(4.0)),
              child: LinearProgressIndicator(
                value: 1.0,
                backgroundColor: Colors.transparent,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.grey.withOpacity(0.1)),
              ),
            ),
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(4.0)),
              child: GradientWrapper(
                child: LinearProgressIndicator(
                  value: ratio,
                  backgroundColor: Colors.transparent,
                  valueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
                ),
              ),
            ),
            if(showText) Transform.translate(
              offset: Offset(textPos, 10.0),
              child: Text(
                '${progressUnitBuilder!(progress)}/${progressUnitBuilder!(total)}',
                //style: WavefulTheme.smallParagraphStyle, TODO: text styles.
                textAlign: TextAlign.center,
              ),
            ),
          ],
        );
      },
    );
  }
}