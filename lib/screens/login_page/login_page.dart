import 'package:e_commerce_app/common_widgets/background.dart';
import 'package:e_commerce_app/common_widgets/button.dart';
import 'package:e_commerce_app/common_widgets/logo.dart';
import 'package:e_commerce_app/common_widgets/textfield.dart';
import 'package:e_commerce_app/consts/consts.dart';
import 'package:e_commerce_app/consts/lists.dart';
import 'package:e_commerce_app/screens/home_screen/home.dart';
import 'package:e_commerce_app/screens/signup_page/signup.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                textField(emailid, emailHint),
                textField(password, passwordHint),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: forgetPassword.text.letterSpacing(2).make(),
                  ),
                ),
                5.heightBox,
                button(
                  color: blackColor,
                  title: login,
                  textColor: whiteColor,
                  onPress: () {
                    Get.to(() => const Home());
                  },
                ).box.width(context.screenWidth - 50).make(),
                5.heightBox,
                createNewAccount.text
                    .fontFamily(bold)
                    .letterSpacing(2)
                    .color(fontGrey)
                    .make(),
                5.heightBox,
                button(
                  color: Colors.grey,
                  title: signup,
                  textColor: whiteColor,
                  onPress: () {
                    Get.to(() => const SignUp());
                  },
                ).box.width(context.screenWidth - 50).make(),
              ],
            )
                .box
                .white
                .rounded
                .padding(const EdgeInsets.all(16))
                .width(context.screenWidth - 65)
                .shadowSm
                .make(),
            15.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                3,
                (index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundColor: lightGrey,
                    radius: 25,
                    child: Image.asset(
                      socialIconList[index],
                      width: 30,
                    ),
                  ),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
