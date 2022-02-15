import 'package:colorful/design.dart';

class ColorfulIconAppBar extends StatelessWidget implements PreferredSizeWidget {

  final bool backButtonEnabled;
  final Widget? title;
  final List<Widget>? actions;
  final Widget? flexibleSpaceOverride;
  const ColorfulIconAppBar({
    Key? key,
    this.backButtonEnabled = true,
    this.title,
    this.actions,
    this.flexibleSpaceOverride,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: backButtonEnabled,
      iconTheme: IconThemeData(color: Colorful.of(context).iconColor),
      //systemOverlayStyle: WavefulTheme.systemOverlayStyle, TODO: this shouldn't be needed since there would be an annotated region, to check.
      elevation: 0,
      title: title, //TODO: implement directly row with text title and icon.
      actions: actions,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(bottomLeft: Colorful.of(context).appBarRadius, bottomRight: Colorful.of(context).appBarRadius),
      ),
      flexibleSpace: flexibleSpaceOverride ?? const ColorfulFlexibleSpace(),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}