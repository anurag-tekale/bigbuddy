import 'package:e_commerce_app/common_widgets/logo.dart';
import 'package:e_commerce_app/consts/consts.dart';
import 'package:e_commerce_app/screens/login_page/login_page.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  // method to change the screen
  changeScreen() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Get.to(
          () => const LoginScreen(),
        );
      },
    );
  }

  @override
  void initState() {
    changeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFF5ED),
      body: Center(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Image.asset(
                icSplashBg,
                width: 300,
              ),
            ),
            const HeightBox(35),
            appLogoWidget(),
            const HeightBox(10),
            appname.text.fontFamily(bold).size(22).black.make(),
          ],
        ),
      ),
    );
  }
}
