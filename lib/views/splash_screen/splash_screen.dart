import 'package:emartapp/consts/consts.dart';
import 'package:emartapp/views/auth_screens/login_screen.dart';
import 'package:emartapp/widget_common/app_logo_widget.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  //creating a method to change the screen
  changeScreen(){
    Future.delayed(Duration(seconds: 3) , (){
      //using getx
      Get.to(()=>LoginScreen());
    });
  }
  //onstartup use karne ke liya
  @override
  void initState() {
    changeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //applogo
              applogoWidget(),

              10.heightBox,
              //appname
              appname.text.white.size(22).fontFamily(bold).make(),

              5.heightBox,
              //version
              appversion.text.white.fontFamily(semibold).make()


            ],
          ),
        ),
      ),
    );
  }
}
