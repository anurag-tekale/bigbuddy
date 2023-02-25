import 'package:e_commerce_app/consts/consts.dart';

Widget appLogoWidget() {
  return Image.asset(icAppLogo)
      .box
      .white
      .size(75, 75)
      .padding(const EdgeInsets.all(8))
      .rounded
      .make();
}
