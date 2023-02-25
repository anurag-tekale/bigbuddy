import 'package:e_commerce_app/consts/consts.dart';

// we're going to provide child on the screen so we're going to create a widget as a parameter child
Widget backGroundWidget({Widget? child}) {
  return Container(
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage(
          imgBackground,
        ),
        fit: BoxFit.fill,
      ),
    ),
    child: child,
  );
}
