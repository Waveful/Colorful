import 'package:colorful/design.dart';

class ButtonsColumn extends StatelessWidget {

  final double spacing;
  final List<Widget> buttons;
  const ButtonsColumn({
    Key? key,
    this.spacing = 20,
    required this.buttons,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> children = [];
    children.addAll(buttons);
    for(int i = 0; i < buttons.length - 1; i++) {
      children.insert((i * 2) + 1, SizedBox(height: spacing,));
    }

    return Column(
      children: children,
    );
  }
}