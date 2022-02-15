import 'package:colorful/design.dart';

class LightTheme extends ColorfulTheme {

  @override
  Color primaryColor = ColorfulColors.primaryColorLight;
  @override
  Color secondaryColor = ColorfulColors.primaryColorLight;
  @override
  Color tertiaryColor = ColorfulColors.tertiaryColorLight;

  @override
  Color titleColor = ColorfulColors.titleColorLight;
  @override
  Color subTitleColor = ColorfulColors.subTitleColorLight;
  @override
  Color paragraphColor = ColorfulColors.paragraphColorLight;

  @override
  List<BoxShadow> standardLighterShadow = ColorfulShadows.standardLighterShadow;
  @override
  List<BoxShadow> standardShadow = ColorfulShadows.standardShadow;
  @override
  List<BoxShadow> standardDarkerShadow = ColorfulShadows.standardDarkerShadow;
  @override
  List<BoxShadow> standardDarkestShadow = ColorfulShadows.standardDarkestShadow;
}