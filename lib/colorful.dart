import 'package:colorful/design.dart';

class Colorful {

  static ColorfulTheme of(BuildContext context) {
    return ColorfulProvider.themeOf(context);
  }
}