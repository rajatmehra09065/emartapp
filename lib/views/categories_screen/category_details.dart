import 'package:emartapp/consts/consts.dart';
import 'package:emartapp/views/categories_screen/item_details.dart';
import 'package:emartapp/widget_common/bg_widget.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CategoryDetails extends StatelessWidget {
  final String? title;
  const CategoryDetails({Key? key , required this.title}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
      appBar: AppBar(
        title: title!.text.fontFamily(bold).white.make() ,
      ),
      body: Container(
        padding: EdgeInsets.all(12),

        child: Column(
          children: [
            //Upper suggestion like baby clothing...
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(6, (index) => "Baby clothing".text.size(12).fontFamily(semibold).color(darkFontGrey).makeCentered().box.margin(EdgeInsets.symmetric(horizontal: 4)).white.roundedSM.size(120, 60).make()),
              ),
            ),

           20.heightBox,

            //item container
            Expanded(child: GridView.builder(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
                itemCount: 6,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisExtent: 250 ,mainAxisSpacing: 8 , crossAxisSpacing: 8), itemBuilder: (context , index)
            {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Image.asset(imgP5 ,width: 200,height: 150, fit:BoxFit.cover, ),

                  "Bags".text.fontFamily(semibold).color(darkFontGrey).make(),
                  10.heightBox,
                  "₹4,000".text.color(Colors.red).fontFamily(semibold).make()


                ],
              ).box.white.padding(EdgeInsets.all(12)).roundedSM.outerShadowSm.make().onTap(() {Get.to(()=>ItemDetails(title:"Dummy Item" ));});
            }))
          ],
        ),
      ),
    ));
  }
}
