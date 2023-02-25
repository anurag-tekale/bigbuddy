import 'package:e_commerce_app/consts/consts.dart';
import 'package:e_commerce_app/consts/lists.dart';
import '../../common_widgets/home_buttons.dart';
import 'components/featured_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      color: whiteColor,
      width: context.screenWidth,
      height: context.screenHeight,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 65,
              color: whiteColor,
              child: TextFormField(
                decoration: const InputDecoration(
                  suffixIcon: Icon(
                    Icons.search,
                  ),
                  filled: true,
                  fillColor: whiteColor,
                  hintText: search,
                  hintStyle: TextStyle(
                    color: textfieldGrey,
                  ),
                ),
              ),
            ),
            10.heightBox,
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    // swipers
                    VxSwiper.builder(
                      autoPlay: true,
                      height: 150,
                      aspectRatio: 16 / 9,
                      itemCount: slidersList.length,
                      itemBuilder: (context, index) {
                        return Image.asset(
                          slidersList[index],
                          fit: BoxFit.fill,
                        )
                            .box
                            .border(color: lightGrey)
                            .rounded
                            .clip(
                              Clip.antiAlias,
                            )
                            .margin(
                              const EdgeInsets.symmetric(
                                horizontal: 5,
                              ),
                            )
                            .make();
                      },
                    ),
                    10.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                          2,
                          (index) => homeButton(
                                height: context.screenHeight * 0.15,
                                width: context.screenWidth / 2.5,
                                icon: index == 0 ? icTodaysDeal : icFlashDeal,
                                title: index == 0 ? todaysDeal : flashsale,
                              )),
                    ),
                    10.heightBox,
                    VxSwiper.builder(
                      autoPlayAnimationDuration: const Duration(
                        seconds: 3,
                      ),
                      autoPlay: true,
                      height: 150,
                      aspectRatio: 16 / 9,
                      itemCount: secSlidersList.length,
                      itemBuilder: (context, index) {
                        return Image.asset(
                          secSlidersList[index],
                          fit: BoxFit.fill,
                        )
                            .box
                            .rounded
                            .clip(
                              Clip.antiAlias,
                            )
                            .margin(
                              const EdgeInsets.symmetric(
                                horizontal: 5,
                              ),
                            )
                            .make();
                      },
                    ),
                    10.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                        3,
                        (index) => homeButton(
                          height: context.screenHeight * 0.15,
                          width: context.screenWidth / 3.5,
                          icon: index == 0
                              ? icTopCategories
                              : index == 1
                                  ? icBrands
                                  : icTopSeller,
                          title: index == 0
                              ? topCategories
                              : index == 1
                                  ? brand
                                  : topSellers,
                        ),
                      ),
                    ),
                    //featured categories
                    20.heightBox,
                    Align(
                      alignment: Alignment.centerLeft,
                      child: featuredCategories.text
                          .color(darkFontGrey)
                          .letterSpacing(2)
                          .size(18)
                          .fontFamily(semibold)
                          .make(),
                    ),
                    20.heightBox,
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                            3,
                            (index) => Column(
                                  children: [
                                    featuredButton(
                                      icon: featuredImagesOne[index],
                                      title: featuredTitlesOne[index],
                                    ),
                                    10.heightBox,
                                    featuredButton(
                                      icon: featuredImagesTwo[index],
                                      title: featuredTitlesTwo[index],
                                    )
                                  ],
                                )).toList(),
                      ),
                    ),
                    20.heightBox,
                    Container(
                      padding: const EdgeInsets.all(12),
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: darkPink,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          featuredProduct.text.black
                              .fontFamily(bold)
                              .letterSpacing(2)
                              .size(18)
                              .make(),
                          10.heightBox,
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: List.generate(
                                  6,
                                  (index) => Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            imgP1,
                                            width: 150,
                                            fit: BoxFit.cover,
                                          ),
                                          10.heightBox,
                                          "Laptop 8GB/64GB"
                                              .text
                                              .fontFamily(semibold)
                                              .color(fontGrey)
                                              .letterSpacing(2)
                                              .make(),
                                          10.heightBox,
                                          "\$1000"
                                              .text
                                              .color(blackColor)
                                              .fontFamily(bold)
                                              .size(16)
                                              .letterSpacing(2)
                                              .make()
                                        ],
                                      )
                                          .box
                                          .white
                                          .margin(
                                            const EdgeInsets.symmetric(
                                                horizontal: 4),
                                          )
                                          .roundedSM
                                          .padding(const EdgeInsets.all(8))
                                          .make()),
                            ),
                          ),
                        ],
                      ),
                    ),
                    20.heightBox,
                    VxSwiper.builder(
                      autoPlayAnimationDuration: const Duration(
                        seconds: 3,
                      ),
                      autoPlay: true,
                      height: 150,
                      aspectRatio: 16 / 9,
                      itemCount: secSlidersList.length,
                      itemBuilder: (context, index) {
                        return Image.asset(
                          secSlidersList[index],
                          fit: BoxFit.fill,
                        )
                            .box
                            .rounded
                            .clip(
                              Clip.antiAlias,
                            )
                            .margin(
                              const EdgeInsets.symmetric(
                                horizontal: 5,
                              ),
                            )
                            .make();
                      },
                    ),

                    // All products
                    20.heightBox,
                    GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 6,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 20,
                        mainAxisExtent: 200,
                        crossAxisSpacing: 10,
                      ),
                      itemBuilder: (context, index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Center(
                              child: Icon(
                                Icons.shopping_basket_rounded,
                                size: 100,
                              ),
                            ),
                            const Spacer(),
                            "Shopping Bag"
                                .text
                                .fontFamily(semibold)
                                .letterSpacing(2)
                                .color(fontGrey)
                                .make(),
                            10.heightBox,
                            "\$1000"
                                .text
                                .color(blackColor)
                                .fontFamily(bold)
                                .letterSpacing(2)
                                .size(16)
                                .make()
                          ],
                        )
                            .box
                            .color(blueColor)
                            .margin(
                              const EdgeInsets.symmetric(horizontal: 4),
                            )
                            .roundedSM
                            .padding(const EdgeInsets.all(12))
                            .make();
                      },
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
