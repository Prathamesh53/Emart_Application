import 'package:carousel_slider/carousel_controller.dart';
import 'package:emart_app/common_widgets/Components/feature_botton.dart';
import 'package:emart_app/consts/consts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../common_widgets/home_button.dart';
import '../../consts/colors.dart';
import '../../consts/list.dart';

class homescreen2 extends StatelessWidget {
  const homescreen2({super.key});

  @override
  Widget build(BuildContext context) {
    backgroundColor(CupertinoColors.white);

    return Container(
      color: Colors.grey[350],
      width: context.screenWidth,
      height: context.screenHeight,
      child: SafeArea(
        child: Column(
          children: [
            Container(

                //search field

                child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(color: Colors.grey[350]),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "what's your mood today?",
                        hintStyle: TextStyle(color: textfieldGrey),
                        suffixIcon: Icon(Icons.search)),
                  ),
                ),
              ),
            )),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    VxSwiper.builder(
                        aspectRatio: 16 / 9,
                        autoPlay: true,
                        height: context.screenHeight * 0.20,
                        itemCount: slides.length,
                        itemBuilder: (context, index) {
                          return Image.asset(
                            slides[index],
                            fit: BoxFit.fill,
                          )
                              .box
                              .rounded
                              .clip(Clip.antiAlias)
                              .margin(EdgeInsets.symmetric(horizontal: 5))
                              .make();
                        }),
                    10.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white),
                            height: context.screenHeight * 0.1,
                            width: context.screenWidth * 0.4,
                            child: Column(
                              children: [
                                14.heightBox,
                                HomeButton(
                                    const Text("Today's Deal"), icTodaysDeal),
                              ],
                            )),
                        Container(
                          width: 15,
                        ),
                        Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white),
                            height: context.screenHeight * 0.1,
                            width: context.screenWidth * 0.4,
                            child: Column(
                              children: [
                                14.heightBox,
                                HomeButton(
                                    const Text("Flash Sale"), icFlashDeal),
                              ],
                            )),
                      ],
                    ),
                    10.heightBox,
                    VxSwiper.builder(
                        aspectRatio: 16 / 9,
                        autoPlay: true,
                        height: context.screenHeight * 0.20,
                        itemCount: slides.length,
                        itemBuilder: (context, index) {
                          return Image.asset(
                            slides2[index],
                            fit: BoxFit.fill,
                          )
                              .box
                              .rounded
                              .clip(Clip.antiAlias)
                              .margin(const EdgeInsets.symmetric(horizontal: 5))
                              .make();
                        }),
                    10.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white),
                            height: context.screenHeight * 0.13,
                            width: context.screenWidth * 0.3,
                            child: Column(
                              children: [
                                25.heightBox,
                                HomeButton(const Text("Top Catories"),
                                    icTopCategories),
                              ],
                            )),
                        Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white),
                            height: context.screenHeight * 0.13,
                            width: context.screenWidth * 0.3,
                            child: Column(
                              children: [
                                25.heightBox,
                                HomeButton(const Text("Brands"), icBrands),
                              ],
                            )),
                        Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white),
                            height: context.screenHeight * 0.13,
                            width: context.screenWidth * 0.3,
                            child: Column(
                              children: [
                                25.heightBox,
                                HomeButton(
                                    const Text("Top seller"), icTopSeller),
                              ],
                            )),
                      ],
                    ),
                    10.heightBox,
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: "Featured Categories"
                              .text
                              .color(Colors.red)
                              .size(20)
                              .bold
                              .make()),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: featuredbutton(imgS1, "Laptops"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: featuredbutton(imgS2, "Mobiles"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: featuredbutton(imgS3, "Headphones"),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: featuredbutton(imgS4, "Womens Clothing"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: featuredbutton(imgS5, "Mens Clothing"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: featuredbutton(imgS6, "Mens Watches"),
                            ),
                          ],
                        ),
                      ),
                    ),
                    15.heightBox,
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.deepOrangeAccent,
                        ),
                        child: Column(children: [
                          10.heightBox,
                          "Featured Products".text.bold.white.size(20).make(),
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
                    10.heightBox,
                    VxSwiper.builder(
                        aspectRatio: 16 / 9,
                        autoPlay: true,
                        height: context.screenHeight * 0.20,
                        itemCount: slides.length,
                        itemBuilder: (context, index) {
                          return Image.asset(
                            slides2[index],
                            fit: BoxFit.fill,
                          )
                              .box
                              .rounded
                              .clip(Clip.antiAlias)
                              .margin(const EdgeInsets.symmetric(horizontal: 5))
                              .make();
                        }),10.heightBox,
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GridView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: 6,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 8,
                              crossAxisSpacing: 8,
                              mainAxisExtent: 300),
                          itemBuilder: (context, index) {
                            return   Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Image.asset(
                                    imgP5,
                                    width: 200,
                                    height: 200,
                                    fit: BoxFit.cover,
                                  ),
                                  10.heightBox,
                                  "Perse".text.make(),
                                  10.heightBox,
                                  "\₹2500".text.make(),
                                ],
                              ).box.rounded.white.make(),
                            );
                          }).box.gray200.rounded.make(),
                    ),
                    10.heightBox

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
