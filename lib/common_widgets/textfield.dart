import 'package:e_commerce_app/consts/consts.dart';

Widget textField(String? title, String? hint) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      title!.text
          .color(Colors.black)
          .fontFamily(semibold)
          .letterSpacing(2)
          .size(15)
          .make(),
      5.heightBox,
      TextFormField(
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(
            fontFamily: semibold,
            color: textfieldGrey,
          ),
          isDense: true,
          fillColor: lightGrey,
          filled: true,
          border: InputBorder.none,
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: redColor,
            ),
          ),
        ),
      ),
      10.heightBox, // to add space between two boxes
    ],
  );
}
