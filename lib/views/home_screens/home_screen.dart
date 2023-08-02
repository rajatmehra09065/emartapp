import 'package:emartapp/consts/consts.dart';
import 'package:emartapp/consts/lists.dart';
import 'package:emartapp/views/home_screens/components/featured_buttons.dart';
import 'package:emartapp/widget_common/home_buttons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: lightGrey,
      width: context.screenWidth,
      height: context.screenHeight,
      padding: EdgeInsets.all(12),

      //safe area is using for protecting ui from ex notch area and others hardare parts
      child: SafeArea(
        child: Column(
          children: [
            //search anything
            Container(
              alignment: Alignment.center,
              color: lightGrey,
              child: TextFormField(
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: searchAnything,
                  hintStyle: TextStyle(
                    color: textfieldGrey
                  )
                ),
              ),
            ),
            10.heightBox,

            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    //swipper for brands
                    VxSwiper.builder(
                        autoPlay: true,
                        aspectRatio: 16/9,
                        height: 120,
                        enlargeCenterPage: true,
                        itemCount: brandsList.length, itemBuilder: (context , index)
                    {
                      return Image.asset(brandsList[index],

                        fit: BoxFit.fill,
                      ).box.rounded.clip(Clip.antiAlias).margin(EdgeInsets.symmetric(horizontal: 8)).make();
                    }),

                    10.heightBox,
                    //Today deals section
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(2, (index) => homeButtons(
                        height: context.screenHeight *0.12,
                        width: context.screenWidth / 2.5,
                        icon: index==0 ? icTodaysDeal : icFlashDeal,
                        title: index==0 ? todayDeals : flashSale,
                      )),
                    ),

                    10.heightBox,
                    //swipper for second list
                    VxSwiper.builder(
                        autoPlay: true,
                        aspectRatio: 16/9,
                        height: 120,
                        enlargeCenterPage: true,
                        itemCount: secondSliderList.length, itemBuilder: (context , index)
                    {
                      return Image.asset(secondSliderList[index],

                        fit: BoxFit.fill,
                      ).box.rounded.clip(Clip.antiAlias).margin(EdgeInsets.symmetric(horizontal: 8)).make();
                    }),

                    10.heightBox,
                    //another row for multiple button
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(3, (index) => homeButtons(
                          height: context.screenHeight * 0.12,
                          width: context.screenWidth / 3.5,
                          icon: index==0 ? icTopCategories : index==1 ? icBrands : icTopSeller,
                          title: index==0 ? topCategories : index==1 ? brand : topSellers
                      )),
                    ),

                    20.heightBox,
                    Align(
                        alignment: Alignment.topLeft,
                        child: featureCategories.text.fontFamily(semibold).size(18).color(darkFontGrey).make()),

                    20.heightBox,
                    //double row
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(3, (index) => Column(
                          children: [
                            featuredButton(icon: featureImgList1[index] , title: featuredTitleList1[index]),
                            10.heightBox,
                            featuredButton(icon: featureImgList2[index] , title: featuredTitleList2[index])
                          ],

                        )).toList(),
                      ),
                    ),

                    20.heightBox,
                    Container(
                      padding: EdgeInsets.all(12),
                      width: double.infinity,
                      decoration: BoxDecoration(color: lightGrey),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          featuredProducts.text.fontFamily(bold).color(darkFontGrey).size(18).make(),

                          10.heightBox,
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: List.generate(6, (index) => Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(imgP1 , width: 150 , fit: BoxFit.cover,),
                                  10.heightBox,
                                  "Laptop 8gb/16gb".text.fontFamily(semibold).color(darkFontGrey).make(),
                                  10.heightBox,
                                  "₹55,000".text.color(Colors.red).fontFamily(semibold).make()
                                ],
                              ).box.white.roundedSM.margin(EdgeInsets.symmetric(horizontal: 6)).padding(EdgeInsets.all(8)).make()),
                            ),
                          ),

                          20.heightBox,
                          //all products grid view
                          GridView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                              itemCount: 6,
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2 , mainAxisSpacing: 8, crossAxisSpacing: 8 ,mainAxisExtent: 300), itemBuilder: (context ,index)
                          {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: [
                                Image.asset(imgP5 ,width: 200,height: 200, fit:BoxFit.cover, ),
                                Spacer(),
                                "Bags".text.fontFamily(semibold).color(darkFontGrey).make(),
                                10.heightBox,
                                "₹4,000".text.color(Colors.red).fontFamily(semibold).make()


                              ],
                            ).box.white.padding(EdgeInsets.all(12)).roundedSM.make();
                          })
                        ],
                      ),
                    ),
                  ]
                  ,
              )),
            )],
            )
        ),
      );

  }
}
