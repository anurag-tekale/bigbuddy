import 'package:e_commerce_app/consts/consts.dart';
import 'package:e_commerce_app/controllers/home_controller.dart';
import 'package:e_commerce_app/screens/cart/cart_screen.dart';
import 'package:e_commerce_app/screens/category/category_screen.dart';
import 'package:e_commerce_app/screens/home_screen/screen.dart';
import 'package:e_commerce_app/screens/profile/profile_screen.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    //home controller
    var controller = Get.put(HomeController());

    var navBarItem = [
      BottomNavigationBarItem(
          icon: Image.asset(
            icHome,
            width: 26,
          ),
          label: home),
      BottomNavigationBarItem(
          icon: Image.asset(
            icCategories,
            width: 26,
          ),
          label: categories),
      BottomNavigationBarItem(
          icon: Image.asset(
            icCart,
            width: 26,
          ),
          label: cart),
      BottomNavigationBarItem(
          icon: Image.asset(
            icProfile,
            width: 26,
          ),
          label: account),
    ];

    var navBody = [
      const HomeScreen(),
      const CategoryScreen(),
      const CartScreen(),
      const ProfileScreen()
    ];

    return Scaffold(
      body: Column(
        children: [
          Obx(
            () => Expanded(
              child: navBody.elementAt(controller.currentNavIndex.value),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.currentNavIndex.value,
          selectedItemColor: blackColor,
          selectedLabelStyle: const TextStyle(
            letterSpacing: 2,
            fontFamily: semibold,
          ),
          type: BottomNavigationBarType.fixed,
          backgroundColor: whiteColor,
          items: navBarItem,
          onTap: (value) {
            controller.currentNavIndex.value = value;
          },
        ),
      ),
    );
  }
}
