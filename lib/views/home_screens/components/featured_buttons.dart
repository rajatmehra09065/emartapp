import 'package:emartapp/consts/consts.dart';

Widget featuredButton({String? title , icon}){
  return Row(
    children: [
      Image.asset(icon , width: 60 , fit: BoxFit.fill,),
      10.widthBox,
      title!.text.fontFamily(semibold).color(darkFontGrey).make()
    ],
  ).box.width(200).roundedSM.margin(EdgeInsets.symmetric(horizontal: 4)).padding(EdgeInsets.all(4)).white.make();

}
