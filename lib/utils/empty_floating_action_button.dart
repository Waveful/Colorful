import 'package:colorful/design.dart';

class EmptyFAB extends StatelessWidget {

  const EmptyFAB({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: false,
      child: FloatingActionButton(
        onPressed: () {},
      ),
    );
  }
}