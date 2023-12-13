import 'package:emart_app/consts/colors.dart';
import 'package:emart_app/consts/consts.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../consts/list.dart';

class Item_Details extends StatelessWidget {
  final String?title;
  const Item_Details({Key?key,required this.title}):super(key:key);
  static int quantity=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading:  const BackButton(
          color: Colors.grey,
        ),
        bottomOpacity: 0,
        elevation: 0,
        backgroundColor: Colors.transparent,


        title: title!.text.extraBlack.red600.make(),
        actions: [
          IconButton(onPressed: (){} ,icon: Icon(Icons.share,color: Vx.red600,)),
          IconButton(onPressed: (){} ,icon: Icon(Icons.favorite_border,color: Vx.red600,)),
        ],
      ),
      body:
        SingleChildScrollView(

          child: Column(


            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VxSwiper.builder(itemCount: 4, itemBuilder: (context,index){
                return Image.asset(imgFc5,width: double.infinity,fit: BoxFit.cover,);
              }),
              10.heightBox,
              "Dummy Item ".text.black.bold.size(20).make(),
              10.heightBox,
              VxRating(onRatingUpdate: (value){},
              normalColor: Vx.green50,
                selectionColor: golden,
                count: 5,
                size: 22,

              ),10.heightBox,
              "\$100".text.bold.size(22).make(),
              Center(
                child: Row(
                  children: [
                    5.widthBox,
                    const CircleAvatar(
                      backgroundColor: Colors.white,

                      child: Icon(Icons.view_carousel_sharp,size: 20,),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          10.heightBox,
                          Center(child: "View in 360".text.size(25).color(Colors.red).align(TextAlign.center).make()),
                          "Scan your product from all angles".text.size(15).align(TextAlign.center).make()
                        ],
                      ),
                    ),
                  ],
                ).box.alignCenter.height(65).width(context.width*0.98).shadowSm.color(Colors.white70).make(),
              ),
              10.heightBox,
              Row(
                children: [
                  10.widthBox,
                  "Colour".text.size(18).bold.make(),
                  30.widthBox,
                  Row(
                    children:


                      List.generate(4, (index) => VxBox().size(40,40).roundedFull.margin(const EdgeInsets.symmetric(horizontal: 6)).color(Vx.randomColor).make()),

                  ).box.make(),
                ],
              ),
              10.heightBox,
              Row(
                children: [
                  10.widthBox,
                  "Quantity".text.size(18).bold.make(),
                  30.widthBox,
                  Row(
                      children: [
                        IconButton(onPressed: (){
                          quantity--;
                        }, icon: Icon(Icons.remove)),
                        quantity.text.size(17).color(darkFontGrey).make(),
                        IconButton(onPressed: (){
                          quantity++;
                        }, icon: Icon(Icons.add)),
                      ]




                  ).box.make(),
                ],
              ),
              10.heightBox,
              Row(
                children: [
                  10.widthBox,
                  "Total".text.size(18).bold.make(),
                  30.widthBox,
                  Row(
                      children: [
                        "\₹0.00".text.color(Colors.red).size(20).bold.make(),

                      ]




                  ).box.make(),
                ],
              ),
              3.heightBox,
              3.heightBox,
              Center(
                child: Container(height: context.screenHeight*0.002,
                color: Colors.grey,width: context.screenWidth*0.98,),
              ),
              "Description".text.bold.align(TextAlign.center).color(Colors.black).size(20).make(),
              4.heightBox,

              "Product description is........".text.bold.align(TextAlign.start).color(Colors.black38).size(12).make(),
              ListView(
                shrinkWrap: true,
                children:
                  List.generate(6, (index) => ListTile(
                    title: "Video".text.make(),
                    trailing: Icon(Icons.arrow_forward),
                  ))

              ),
              "View Similar Products".text.center.color(Colors.red).bold.size(15).make(),
              5.heightBox,
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.deepOrangeAccent,
                  ),
                  child: Column(children: [
                    10.heightBox,

                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Image.asset(
                                  imgP1,
                                  width: 120,
                                  fit: BoxFit.cover,
                                ),
                                10.heightBox,
                                "i5/12th generation".text.make(),
                                10.heightBox,
                                "\₹30000".text.make(),
                              ],
                            ).box.rounded.white.make(),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Image.asset(
                                  imgP2,
                                  width: 120,
                                  fit: BoxFit.cover,
                                ),
                                10.heightBox,
                                "LakMe Beauty-KIT".text.make(),
                                10.heightBox,
                                "\₹4000".text.make(),
                              ],
                            ).box.rounded.white.make(),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Image.asset(
                                  imgP3,
                                  width: 120,
                                  fit: BoxFit.cover,
                                ),
                                10.heightBox,
                                "I-PAD".text.make(),
                                10.heightBox,
                                "\₹60000".text.make(),
                              ],
                            ).box.rounded.white.make(),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Image.asset(
                                  imgP4,
                                  width: 120,
                                  fit: BoxFit.cover,
                                ),
                                10.heightBox,
                                "Women's Sandle".text.make(),
                                10.heightBox,
                                "\₹3000".text.make(),
                              ],
                            ).box.rounded.white.make(),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Image.asset(
                                  imgP5,
                                  width: 120,
                                  fit: BoxFit.cover,
                                ),
                                10.heightBox,
                                "Perse".text.make(),
                                10.heightBox,
                                "\₹2500".text.make(),
                              ],
                            ).box.rounded.white.make(),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Image.asset(
                                  imgP6,
                                  width: 120,
                                  fit: BoxFit.cover,
                                ),
                                10.heightBox,
                                "Skechers".text.make(),
                                10.heightBox,
                                "\₹10000".text.make(),
                              ],
                            ).box.rounded.white.make(),
                          )
                        ],
                      ),
                    )
                  ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(

                  width: double.infinity,
                  height: 40,
                  child: Center(child: "Add to cart".text.white.size(22).bold.make()),
                ).box.rounded.color(redColor).make(),
              )
            ],
          ),
        )


    );
  }
}
