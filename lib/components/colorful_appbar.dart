import 'package:colorful/design.dart';

class ColorfulAppBar extends StatelessWidget implements PreferredSizeWidget {

  final String? title;
  final List<Widget>? actions;
  const ColorfulAppBar({
    Key? key,
    this.title,
    this.actions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColorfulIconAppBar(
      title: Text(title ?? '', style: TextStyle(color: Colorful.of(context).iconColor),),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}