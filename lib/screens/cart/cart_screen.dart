import 'package:e_commerce_app/consts/consts.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: "Cart is Empty!".text.fontFamily(semibold).white.makeCentered(),
    );
  }
}
