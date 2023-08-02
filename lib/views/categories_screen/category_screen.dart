import 'package:emartapp/consts/consts.dart';
import 'package:emartapp/consts/lists.dart';
import 'package:emartapp/views/categories_screen/category_details.dart';
import 'package:emartapp/widget_common/bg_widget.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
      appBar: AppBar(
        title: categories.text.fontFamily(bold).white.make(),
      ),

      body: Container(
        padding: EdgeInsets.all(12),
        child: GridView.builder(
          shrinkWrap: true,
            itemCount: 9,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, mainAxisSpacing: 8 , crossAxisSpacing: 8, mainAxisExtent: 200), itemBuilder: (context , index)
        {
          return Column(
            children: [
              Image.asset(catergoryImgList[index] , width: 200, height: 100, fit: BoxFit.cover,),
              20.heightBox,
              categoryNameList[index].text.color(darkFontGrey).align(TextAlign.center).make()
            ],

          ).box.white.rounded.clip(Clip.antiAlias).outerShadowSm.make().onTap(() {
            Get.to(()=>CategoryDetails(title: categoryNameList[index],));
          });
        }),
      ),

    ));


  }
}
