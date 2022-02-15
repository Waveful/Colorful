import 'package:colorful/design.dart';

class ColorfulProvider extends InheritedWidget {

  final ColorfulTheme theme;
  const ColorfulProvider({
    Key? key,
    required this.theme,
    required Widget child,
  }) : super(key: key, child: child);

  static ColorfulTheme themeOf(BuildContext context) {
    final ColorfulProvider? result = context.dependOnInheritedWidgetOfExactType<ColorfulProvider>();
    assert(result != null, 'No ColorfulProvider found in context.');
    return result!.theme;
  }

  @override
  bool updateShouldNotify(ColorfulProvider oldWidget) => oldWidget.theme != theme;
}