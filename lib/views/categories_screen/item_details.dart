import 'package:emartapp/consts/consts.dart';
import 'package:emartapp/widget_common/our_button.dart';

class ItemDetails extends StatelessWidget {
  final String? title;
  const ItemDetails({Key? key , required this.title}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.white,

        title: title!.text.fontFamily(bold).color(darkFontGrey).make(),
          actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.share , color: darkFontGrey,)),
        IconButton(onPressed: (){}, icon: Icon(Icons.favorite_outline , color: darkFontGrey,)),
      ]),

      body: Column(
        children: [

          Expanded(
            child: Container(
              padding: EdgeInsets.all(12),

              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //vx swipper
                    VxSwiper.builder(autoPlay: true, height: 250, itemCount: 3, itemBuilder: (context , index)
                    {
                      return Image.asset(imgFc6 , width: double.infinity , fit: BoxFit.cover, );
                    }),

                    10.heightBox,
                    title!.text.fontFamily(semibold).size(16).color(darkFontGrey).make(),
                    
                    10.heightBox,
                    VxRating(onRatingUpdate: (value){} , normalColor: textfieldGrey,selectionColor: golden,size: 25, ),

                    10.heightBox,
                    "₹1,000".text.color(Colors.red).size(18).fontFamily(semibold).make()
                  ],

                ),
              ),
              color: Colors.white,
            ),
          ),

          //Add to cart and  buy now
          SizedBox(
            width: double.infinity,
            height: 60,
            child:ourButton(title: "Add to cart", color: redColor, textColor: whiteColor , onPressed: (){}),
          )
        ],
      ),
    );
  }
}
