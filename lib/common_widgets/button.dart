import 'package:e_commerce_app/consts/consts.dart';

Widget button({onPress, color, textColor, String? title}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: color,
      padding: const EdgeInsets.all(12),
    ),
    onPressed: onPress,
    child:
        title!.text.color(textColor).letterSpacing(2).fontFamily(bold).make(),
  );
}
