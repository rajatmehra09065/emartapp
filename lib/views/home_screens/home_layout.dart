import 'package:emartapp/consts/consts.dart';
import 'package:emartapp/controllers/home_controller.dart';
import 'package:emartapp/views/account_screen/account_screen.dart';
import 'package:emartapp/views/cart_screen/cart_screen.dart';
import 'package:emartapp/views/categories_screen/category_screen.dart';
import 'package:emartapp/views/home_screens/home_screen.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    //bottom navigation bar
    var navBarList = [
      BottomNavigationBarItem(icon: Image.asset(icHome , width: 26) , label: home),
      BottomNavigationBarItem(icon: Image.asset(icCategories , width: 26) , label: categories),
      BottomNavigationBarItem(icon: Image.asset(icCart , width: 26) , label: cart),
      BottomNavigationBarItem(icon: Image.asset(icProfile , width: 26) , label: account),
    ];

    //change the layout according to the nav bar
    var navBody =[
      HomeScreen(),
      CategoryScreen(),
      CartScreen(),
      AccountScreen()

    ];

    //init home controller
    var controller = Get.put(HomeController());


    return Scaffold(
      body: Column(
        children: [
          Obx(()=> Expanded(child: navBody.elementAt(controller.currentNavIndex.value),)),
        ],
      ),
      bottomNavigationBar: Obx(()=>
         BottomNavigationBar(
           currentIndex: controller.currentNavIndex.value,
          selectedItemColor: Colors.red,
          selectedLabelStyle: TextStyle(fontFamily: semibold),
          backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            //ontab
             onTap: (value){
             controller.currentNavIndex.value = value;

             },
            items: navBarList),
      ),
    );
  }
}
