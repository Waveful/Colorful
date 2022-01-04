import 'package:colorful/design.dart';
import 'package:flutter/painting.dart';

class DarkTheme extends ColorfulTheme {

  @override
  Color primaryColor = ColorfulColors.primaryColorDark;
  @override
  Color secondaryColor = ColorfulColors.secondaryColorDark;
  @override
  Color tertiaryColor = ColorfulColors.tertiaryColorDark;

  @override
  Color titleColor = ColorfulColors.titleColorDark;
  @override
  Color subTitleColor = ColorfulColors.subTitleColorDark;
  @override
  Color paragraphColor = ColorfulColors.paragraphColorDark;

  @override
  List<BoxShadow> standardLighterShadow = [];
  @override
  List<BoxShadow> standardShadow = [];
  @override
  List<BoxShadow> standardDarkerShadow = [];
  @override
  List<BoxShadow> standardDarkestShadow = [];
}