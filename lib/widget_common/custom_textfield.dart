import 'package:emartapp/consts/consts.dart';

Widget customTextFiled( {String? title , String? hint , controller} ){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      title!.text.fontFamily(semibold).color(Colors.red).size(16).make(),
      5.heightBox,
      TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hint!,
          hintStyle: TextStyle(fontFamily: semibold, color: textfieldGrey),
          isDense: true,
          fillColor: lightGrey,
          filled: true,
          border: InputBorder.none,
          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red))
        ),
      ),
      5.heightBox

    ],
  );
}