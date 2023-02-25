import 'package:e_commerce_app/common_widgets/button.dart';
import 'package:e_commerce_app/consts/consts.dart';
import 'package:e_commerce_app/consts/lists.dart';

class ItemDetails extends StatelessWidget {
  final String? title;
  const ItemDetails({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        title: title!.text
            .color(darkFontGrey)
            .letterSpacing(2)
            .fontFamily(bold)
            .make(),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.share,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_outline,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    VxSwiper.builder(
                      autoPlay: true,
                      height: 350,
                      itemCount: 3,
                      aspectRatio: 16 / 9,
                      itemBuilder: (context, index) {
                        return Image.asset(
                          imgFc5,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        );
                      },
                    ),
                    10.heightBox,
                    title!.text
                        .size(16)
                        .color(darkFontGrey)
                        .fontFamily(semibold)
                        .letterSpacing(2)
                        .make(),
                    10.heightBox,
                    VxRating(
                      onRatingUpdate: (value) {},
                      normalColor: textfieldGrey,
                      selectionColor: stars,
                      count: 5,
                      size: 25,
                      stepInt: true,
                    ),
                    10.heightBox,
                    "\$30,000"
                        .text
                        .color(blackColor)
                        .fontFamily(bold)
                        .size(18)
                        .letterSpacing(2)
                        .make(),

                    // color section
                    20.heightBox,
                    Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 100,
                              child: "Color: "
                                  .text
                                  .color(blackColor)
                                  .letterSpacing(2)
                                  .make(),
                            ),
                            Row(
                              children: List.generate(
                                3,
                                (index) => VxBox()
                                    .size(40, 40)
                                    .roundedFull
                                    .color(Vx.randomPrimaryColor)
                                    .margin(
                                      const EdgeInsets.symmetric(
                                        horizontal: 4,
                                      ),
                                    )
                                    .make(),
                              ),
                            ),
                          ],
                        ).box.padding(const EdgeInsets.all(8)).make(),

                        // quantity row
                        Row(
                          children: [
                            SizedBox(
                              width: 100,
                              child: "Quantity: "
                                  .text
                                  .color(blackColor)
                                  .letterSpacing(2)
                                  .make(),
                            ),
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.remove,
                                  ),
                                ),
                                "0"
                                    .text
                                    .size(16)
                                    .color(darkFontGrey)
                                    .fontFamily(bold)
                                    .letterSpacing(2)
                                    .make(),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.add,
                                  ),
                                ),
                                10.widthBox,
                                "(0 available)"
                                    .text
                                    .color(textfieldGrey)
                                    .letterSpacing(2)
                                    .make()
                              ],
                            ),
                          ],
                        ).box.padding(const EdgeInsets.all(8)).make(),

                        // total row
                        Row(
                          children: [
                            SizedBox(
                              width: 100,
                              child: "Total: "
                                  .text
                                  .color(blackColor)
                                  .letterSpacing(2)
                                  .make(),
                            ),
                            "\$0.00"
                                .text
                                .color(textfieldGrey)
                                .size(16)
                                .fontFamily(bold)
                                .letterSpacing(2)
                                .make(),
                          ],
                        ).box.padding(const EdgeInsets.all(8)).make(),
                      ],
                    ).box.white.shadowSm.make(),

                    //description section
                    10.heightBox,
                    "Description"
                        .text
                        .color(darkFontGrey)
                        .fontFamily(semibold)
                        .letterSpacing(2)
                        .make(),
                    10.heightBox,
                    "This is a dummy item and dummy description here.."
                        .text
                        .color(darkFontGrey)
                        .letterSpacing(2)
                        .make(),

                    // buttons section

                    10.heightBox,
                    ListView(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      children: List.generate(
                        itemDetailButtonsList.length,
                        (index) => ListTile(
                          title: itemDetailButtonsList[index]
                              .text
                              .semiBold
                              .color(darkFontGrey)
                              .letterSpacing(2)
                              .make(),
                          trailing: const Icon(
                            Icons.arrow_forward,
                          ),
                        ),
                      ),
                    ),
                    20.heightBox,
                    // products you may like
                    productsyoumaylike.text
                        .fontFamily(bold)
                        .size(16)
                        .color(darkFontGrey)
                        .letterSpacing(2)
                        .make(),
                    10.heightBox,
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                            6,
                            (index) => Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                        .color(textfieldGrey)
                                        .letterSpacing(2)
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
                                    .white
                                    .margin(
                                      const EdgeInsets.symmetric(horizontal: 4),
                                    )
                                    .roundedSM
                                    .padding(const EdgeInsets.all(8))
                                    .make()),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 60,
            child: button(
              color: const Color(0xffFFF5ED),
              onPress: () {},
              textColor: blackColor,
              title: 'Add to Cart',
            ),
          )
        ],
      ),
    );
  }
}
