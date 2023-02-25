import 'package:e_commerce_app/consts/consts.dart';
import 'package:e_commerce_app/screens/category/item_details.dart';
import 'package:get/get.dart';

class CategoryDetails extends StatelessWidget {
  final String? title;
  const CategoryDetails({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      appBar: AppBar(
        title: title!.text.fontFamily(bold).black.make(),
      ),
      body: Container(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  6,
                  (index) => 'Baby Clothing'
                      .text
                      .size(12)
                      .fontFamily(semibold)
                      .color(darkFontGrey)
                      .makeCentered()
                      .box
                      .white
                      .rounded
                      .size(120, 60)
                      .margin(
                        const EdgeInsets.symmetric(horizontal: 4),
                      )
                      .make(),
                ),
              ),
            ),
            20.heightBox,

            // item container
            Expanded(
              child: GridView.builder(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: 6,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 230,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                ),
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        imgP5,
                        height: 150,
                        width: 200,
                        fit: BoxFit.cover,
                      ),
                      "Laptop 8GB/64GB"
                          .text
                          .fontFamily(semibold)
                          .color(textfieldGrey)
                          .make(),
                      10.heightBox,
                      "\$1000"
                          .text
                          .color(blackColor)
                          .fontFamily(bold)
                          .size(16)
                          .make()
                    ],
                  )
                      .box
                      .white
                      .margin(
                        const EdgeInsets.symmetric(horizontal: 4),
                      )
                      .roundedLg
                      .outerShadowSm
                      .padding(const EdgeInsets.all(12))
                      .make()
                      .onTap(() {
                    Get.to(
                      () => const ItemDetails(
                        title: 'Dummy title',
                      ),
                    );
                  });
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
