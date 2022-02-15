import 'package:colorful/design.dart';

abstract class ColorfulTheme {

  const ColorfulTheme();


  final Color accentColor = ColorfulColors.accentColor;
  final Color iconColor = ColorfulColors.iconColor;

  abstract final Color primaryColor;
  abstract final Color secondaryColor;
  abstract final Color tertiaryColor;

  abstract final Color titleColor;
  abstract final Color subTitleColor;
  abstract final Color paragraphColor;

  final Gradient colorfulGradient = ColorfulGradients.wavefulGradient;

  abstract final List<BoxShadow> standardLighterShadow;
  abstract final List<BoxShadow> standardShadow;
  abstract final List<BoxShadow> standardDarkerShadow;
  abstract final List<BoxShadow> standardDarkestShadow;

  final List<BoxShadow> colorfulHueShadow = ColorfulShadows.wavefulHueShadow;

  final Radius standardRadius = ColorfulRadii.standardRadius;
  final BorderRadius standardBorderRadius = ColorfulRadii.standardBorderRadius;

  final Radius appBarRadius = ColorfulRadii.appBarRadius;
}