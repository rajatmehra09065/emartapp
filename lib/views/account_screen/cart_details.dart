import 'package:emartapp/consts/consts.dart';

Widget CartDetails({width , String? count , String? title}){
  return  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      count!.text.fontFamily(bold).color(darkFontGrey).make(),
      5.heightBox,
      title!.text.fontFamily(semibold).color(darkFontGrey).make()
    ],
  ).box.rounded.white.width(width).height(60).make();
}

