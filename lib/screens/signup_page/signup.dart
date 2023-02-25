import 'package:get/get.dart';

import '../../common_widgets/background.dart';
import '../../common_widgets/button.dart';
import '../../common_widgets/logo.dart';
import '../../common_widgets/textfield.dart';
import '../../consts/consts.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool? isCheck = false;

  @override
  Widget build(BuildContext context) {
    return backGroundWidget(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Column(
            children: [
              (context.screenHeight * 0.1).heightBox,
              appLogoWidget(),
              60.heightBox,
              Column(
                children: [
                  textField(name, nameHint),
                  textField(emailid, emailHint),
                  textField(password, passwordHint),
                  textField(retypePassword, passwordHint),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: forgetPassword.text.make(),
                    ),
                  ),
                  Row(
                    children: [
                      Checkbox(
                        activeColor: blackColor,
                        checkColor: whiteColor,
                        value: isCheck,
                        onChanged: (newValue) {
                          setState(
                            () {
                              isCheck = newValue;
                            },
                          );
                        },
                      ),
                      10.widthBox,
                      Expanded(
                        child: RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: 'I agree to the ',
                                style: TextStyle(
                                  fontFamily: regular,
                                  letterSpacing: 2,
                                  color: fontGrey,
                                ),
                              ),
                              TextSpan(
                                text: terms,
                                style: TextStyle(
                                  fontFamily: bold,
                                  letterSpacing: 2,
                                  color: blackColor,
                                ),
                              ),
                              TextSpan(
                                text: " & ",
                                style: TextStyle(
                                  letterSpacing: 2,
                                  fontFamily: regular,
                                  color: fontGrey,
                                ),
                              ),
                              TextSpan(
                                text: privacy,
                                style: TextStyle(
                                  letterSpacing: 2,
                                  fontFamily: bold,
                                  color: blackColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  5.heightBox,
                  button(
                    color: isCheck == true ? blackColor : Colors.grey,
                    title: signup,
                    textColor: whiteColor,
                    onPress: () {},
                  ).box.width(context.screenWidth - 50).make(),
                  10.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      alreadyHaveAnAccount.text
                          .letterSpacing(2)
                          .color(fontGrey)
                          .make(),
                      login.text
                          .fontFamily(bold)
                          .color(blackColor)
                          .letterSpacing(2)
                          .make()
                          .onTap(
                        () {
                          Get.back();
                        },
                      ),
                    ],
                  ),
                ],
              )
                  .box
                  .white
                  .rounded
                  .padding(const EdgeInsets.all(16))
                  .width(context.screenWidth - 65)
                  .shadowSm
                  .make(),
            ],
          ),
        ),
      ),
    );
  }
}
