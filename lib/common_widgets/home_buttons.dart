import 'package:e_commerce_app/consts/consts.dart';

Widget homeButton({width, height, icon, String? title, onPress}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(
        icon,
        width: 26,
      ),
      10.heightBox,
      title!.text.fontFamily(semibold).letterSpacing(2).color(blackColor).make()
    ],
  ).box.rounded.color(blueColor).size(width, height).make();
}
