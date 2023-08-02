import 'package:emartapp/consts/consts.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,

      child: "Your cart is empty".text.fontFamily(semibold).size(18).color(darkFontGrey).makeCentered(),
    );
  }
}
