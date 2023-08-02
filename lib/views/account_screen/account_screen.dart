import 'package:emartapp/consts/consts.dart';
import 'package:emartapp/consts/lists.dart';
import 'package:emartapp/widget_common/bg_widget.dart';
import 'package:emartapp/consts/strings.dart';
import 'package:emartapp/views/account_screen/cart_details.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(8),

          child: Column(
            children: [
              //editbutton
              Align(
                alignment:Alignment.topRight ,
                  child: Icon(Icons.edit , color: Colors.white,)),
              
              Row(
                children: [
                Image.asset(imgProfile2 , width: 100, fit: BoxFit.cover,).box.roundedFull.clip(Clip.antiAlias).make(),

                  10.widthBox,
                  
                  //Name  and email
                  Expanded(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      "Simran".text.color(Colors.white).size(16).fontFamily(semibold).make(),

                      "simran@gmail.com".text.white.size(14).fontFamily(semibold).make()
                      
                    ],
                  )),

                  //logoutbutton
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Colors.white)
                    ),
                      onPressed: (){}, child: "Log out".text.white.fontFamily(semibold).make())
                ]
              ),

              20.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CartDetails(width:context.screenWidth/3.4 , count: "00" , title: "in your cart"),
                  CartDetails(width:context.screenWidth/3.4 , count: "5" , title: "in your wishlist"),
                  CartDetails(width:context.screenWidth/3.4 , count: "3" , title: "your ordered"),
                ],
              ),

              40.heightBox,

              //button list
             ListView.separated(
               shrinkWrap: true,
                 itemBuilder:(BuildContext context, int index) {
               return ListTile(
                 leading: Image.asset(profileButtonsImg[index] , width: 20,),
                 title: "${profileButtonList[index]}".text.fontFamily(semibold).color(darkFontGrey).make(),
               ).box.white.rounded.padding(EdgeInsets.symmetric(horizontal: 4)).shadowSm.make();
             }, separatorBuilder:(context , index)
             {
               return Divider(
                 color: lightGrey,

               );
             }
                 , itemCount: profileButtonList.length)

            ],
          ),
          
        ),
      ),

    ));
  }
}
