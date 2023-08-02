import 'package:emartapp/consts/consts.dart';

Widget ourButton({String? title , onPressed , color , textColor}){
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      primary: Colors.red,
      padding: EdgeInsets.all(12)
    ),
      //onpressed
      onPressed: onPressed,
      child: title!.text.fontFamily(bold).color(textColor).size(18).make());
}