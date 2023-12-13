import 'package:emart_app/common_widgets/background.dart';
import 'package:flutter/material.dart';
import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/list.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'Product_detail.dart';

class Category_Details extends StatelessWidget {
  final String? title;

  const Category_Details({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
      appBar: AppBar(
        bottomOpacity: 0,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: title!.text.bold.white.make(),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              10.heightBox,
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                      6,
                      (index) => categori_detailimages[index]
                          .text
                          .bold
                          .center.center
                          .makeCentered()
                          .box
                          .margin(
                              EdgeInsets.symmetric(horizontal: 5, vertical: 5))
                          .white
                          .size(150, 60)
                          .rounded
                          .make()),
                ),
              ),
              20.heightBox,
              GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 3,
                      crossAxisSpacing: 4,
                      mainAxisExtent: 200),
                  itemBuilder: (context, index) {
                    return   Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Column(
                        children: [
                          Image.asset(categoriimages[index],height: 120,width: 200,
                          ),
                          10.heightBox,
                          categorilist[index].text.bold.align(TextAlign.center).make(),
                          5.heightBox,
                          price_list[index].text.bold.red600.align(TextAlign.left).make(),
                        ],
                      ).box.rounded.white.make().onTap(() {
                        Get.to(()=>Item_Details(title: categorilist[index])) ;
                      }),
                    );
                  }).box.gray200.rounded.make(),
            ],
          ),
        ),
      ),
    ));
  }
}
