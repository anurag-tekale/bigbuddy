import 'package:e_commerce_app/common_widgets/background.dart';
import 'package:e_commerce_app/consts/consts.dart';
import 'package:e_commerce_app/screens/category/details.dart';
import 'package:get/get.dart';

import '../../consts/lists.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return backGroundWidget(
      child: Scaffold(
        backgroundColor: lavendor,
        appBar: AppBar(
          title: categories.text.fontFamily(bold).black.make(),
        ),
        body: Container(
          padding: const EdgeInsets.all(12),
          child: GridView.builder(
              shrinkWrap: true,
              itemCount: 9,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                mainAxisExtent: 215,
              ),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Image.asset(
                        categoryImages[index],
                        height: 120,
                        width: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                    10.heightBox,
                    categoriesList[index]
                        .text
                        .size(16)
                        .fontFamily(bold)
                        .letterSpacing(2)
                        .color(darkFontGrey)
                        .align(TextAlign.center)
                        .make(),
                  ],
                )
                    .box
                    .color(whiteColor)
                    .roundedSM
                    .clip(Clip.antiAlias)
                    .outerShadowSm
                    .border(color: textfieldGrey)
                    .make()
                    .onTap(
                  () {
                    Get.to(
                      () => CategoryDetails(
                        title: categoriesList[index],
                      ),
                    );
                  },
                );
              }),
        ),
      ),
    );
  }
}
