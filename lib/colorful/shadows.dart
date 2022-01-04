import 'package:flutter/painting.dart';

class ColorfulShadows {

  static const List<BoxShadow> standardLighterShadow = [
    BoxShadow(
      color: Color(0x1A8a959e),
      blurRadius: 5.0,
      offset: Offset(0.0, 2.5),
    ),
  ];

  static const List<BoxShadow> standardShadow = [
    BoxShadow(
      color: Color(0x338a959e),
      blurRadius: 5.0,
      offset: Offset(0.0, 2.5),
    ),
  ];

  static const List<BoxShadow> standardDarkerShadow = [
    BoxShadow(
      color: Color(0x4D8a959e),
      blurRadius: 5.0,
      offset: Offset(0.0, 2.5),
    ),
  ];

  static const List<BoxShadow> standardDarkestShadow = [
    BoxShadow(
      color: Color(0x828a959e),
      blurRadius: 5.0,
      offset: Offset(0.0, 2.5),
    ),
  ];

  static const List<BoxShadow> wavefulHueShadow = [
    BoxShadow(
      color: Color(0x66448AFF),
      blurRadius: 7.5,
      offset: Offset(0.0, 2.5),
    ),
  ];

  static const List<BoxShadow> negativeActionHueShadow = [
    BoxShadow(
      color: Color(0x66FF5252),
      blurRadius: 7.5,
      offset: Offset(0.0, 2.5),
    ),
  ];

  static const List<BoxShadow> superlikeHueShadow = [
    BoxShadow(
      color: Color(0x66F44336),
      blurRadius: 7.5,
      offset: Offset(0.0, 2.5),
    ),
  ];

  static List<BoxShadow> getGradientHueShadow(Gradient gradient) {
    return [
      BoxShadow(
        color: gradient.colors.first.withAlpha(102),
        blurRadius: 7.5,
        offset: const Offset(0.0, 2.5),
      ),
    ];
  }
}