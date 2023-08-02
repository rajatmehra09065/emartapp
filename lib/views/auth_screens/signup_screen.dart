import 'package:emartapp/consts/consts.dart';
import 'package:emartapp/consts/lists.dart';
import 'package:emartapp/widget_common/app_logo_widget.dart';
import 'package:emartapp/widget_common/bg_widget.dart';
import 'package:emartapp/widget_common/custom_textfield.dart';
import 'package:emartapp/widget_common/our_button.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  bool? isCheck = false;

  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
        resizeToAvoidBottomInset: false,
        body:Center(
          child: Column(

            children: [
              //khud se screen adjust ho jaygi
              (context.screenHeight*0.1).heightBox,

              //applogo
              applogoWidget(),

              10.heightBox,
              "Join the $appname".text.white.fontFamily(bold).size(18).make(),

              15.heightBox,
              //whitebox
              Column(

                children: [
                  10.heightBox,
                  customTextFiled(title: name , hint: nameHint),
                  customTextFiled(title: email , hint: emailHint),
                  customTextFiled(title: password ,hint: passwordHint),
                  customTextFiled(title: retypePassword , hint: passwordHint),

                  5.heightBox,
                  //checkbox
                  Row(
                    children: [
                      Checkbox(
                           activeColor: Colors.red,
                          checkColor: Colors.white,
                          value: isCheck, onChanged: (newValue){
                            setState(() {
                              isCheck=newValue;
                          });}),

                      10.widthBox,
                      Expanded(child: "I agree to the Terms and Condition & Privach Policies".text.fontFamily(regular).color(fontGrey).make()),

                    ],
                  ),

                  5.heightBox,
                  //button
                  ourButton(title: signup , color: isCheck==true ? redColor : lightGrey , textColor: whiteColor , onPressed: (){}).box.width(context.screenWidth - 50).make(),

                  10.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      alreaydHaveAnAccount.text.fontFamily(semibold).color(fontGrey).make(),

                      5.widthBox,
                      login.text.fontFamily(bold).color(Colors.red).make()
                    ],
                  ).onTap(() {Get.back(); })


                ],
              ).box.white.rounded.padding(EdgeInsets.all(8)).padding(EdgeInsets.all(8)).width(context.screenWidth - 70).shadowSm.make(),
              
            ],
          ),
        )
    ));
}}
