import 'package:emartapp/consts/consts.dart';
import 'package:emartapp/consts/lists.dart';
import 'package:emartapp/views/auth_screens/signup_screen.dart';
import 'package:emartapp/views/home_screens/home_layout.dart';
import 'package:emartapp/widget_common/app_logo_widget.dart';
import 'package:emartapp/widget_common/bg_widget.dart';
import 'package:emartapp/widget_common/custom_textfield.dart';
import 'package:emartapp/widget_common/our_button.dart';
import 'package:get/get.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);


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
            "Log in to $appname".text.white.fontFamily(bold).size(18).make(),

            15.heightBox,
            //whitebox
            Column(
              children: [
                10.heightBox,
                customTextFiled(title: email , hint: emailHint),
                customTextFiled(title: password ,hint: passwordHint),

                //forget password
                Align(
                  alignment: Alignment.centerRight,
                    child: TextButton(onPressed: (){}, child: "Forget Password".text.make())),

                5.heightBox,
                //login button
                ourButton(title: login , color: redColor , textColor: whiteColor , onPressed: (){Get.to(()=>HomeLayout());}).box.width(context.screenWidth - 50).make(),

                //text
                5.heightBox,
                createNewAccount.text.color(fontGrey).make(),

                5.heightBox,
                ourButton(title: signup , color: lightRed , textColor: whiteColor , onPressed: (){Get.to(()=>SignUpScreen());} ).box.width(context.width - 50).make(),

                10.heightBox,
                //text
                loginWith.text.color(fontGrey).make(),

                5.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(2, (index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius :25,
                      backgroundColor: Colors.white
                      , child: Image.asset(socialIconsList[index], width: 35),),
                  )),
                )


              ],

            ).box.white.rounded.padding(EdgeInsets.all(8)).width(context.screenWidth - 70).shadowSm.make()
          ],
        ),
      )
    ));
  }
}
