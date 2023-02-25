import 'package:e_commerce_app/common_widgets/background.dart';
import 'package:e_commerce_app/consts/consts.dart';
import 'package:e_commerce_app/consts/lists.dart';
import 'package:e_commerce_app/screens/login_page/login_page.dart';
import 'package:e_commerce_app/screens/profile/details_cart.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return backGroundWidget(
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              // edit profile button
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: const Align(
                  alignment: Alignment.topRight,
                  child: Icon(
                    Icons.edit,
                    color: blackColor,
                  ),
                ).onTap(() {}),
              ),
              //users details

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    Image.asset(
                      imgProfile2,
                      width: 100,
                      fit: BoxFit.cover,
                    ).box.roundedFull.clip(Clip.antiAlias).make(),
                    10.widthBox,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          'Dummy User'
                              .text
                              .fontFamily(bold)
                              .color(blackColor)
                              .letterSpacing(2)
                              .make(),
                          'Customer@example.com'
                              .text
                              .letterSpacing(0)
                              .color(blackColor)
                              .make(),
                        ],
                      ),
                    ),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                          color: blackColor,
                        ),
                      ),
                      onPressed: () {
                        Get.to(
                          () => const LoginScreen(),
                        );
                      },
                      child: logout.text
                          .fontFamily(semibold)
                          .color(blackColor)
                          .letterSpacing(2)
                          .make(),
                    )
                  ],
                ),
              ),

              20.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  detailsCart(
                    count: '00',
                    title: 'In your cart',
                    width: context.screenWidth / 3.5,
                  ),
                  detailsCart(
                    count: '00',
                    title: 'Wishlist',
                    width: context.screenWidth / 3.5,
                  ),
                  detailsCart(
                    count: '00',
                    title: 'Your Orders',
                    width: context.screenWidth / 3.5,
                  ),
                ],
              ),
              20.heightBox,
              ListView.separated(
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: Image.asset(
                      profileButtonsIcon[index],
                      width: 22,
                    ),
                    title: profileButtonsList[index]
                        .text
                        .fontFamily(semibold)
                        .color(darkFontGrey)
                        .letterSpacing(2)
                        .make(),
                  );
                },
                separatorBuilder: (context, index) {
                  return const Divider(
                    color: lightGrey,
                  );
                },
                itemCount: profileButtonsList.length,
              )
                  .box
                  .white
                  .rounded
                  .margin(
                    const EdgeInsets.all(
                      12,
                    ),
                  )
                  .padding(
                    const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                  )
                  .shadowSm
                  .make()
                  .box
                  .color(
                    const Color(0xffFFF5ED),
                  )
                  .make(),
            ],
          ),
        ),
      ),
    );
  }
}
