import 'package:emart_app/common_widgets/background.dart';
import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'categori_details.dart';

class Category_Screen extends StatelessWidget {
  const Category_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: "Categories".text.bold.white.make(),
        bottomOpacity: 0,
        elevation: 0,
      ),
      body: Padding(
        
        padding: EdgeInsets.all(4),
        child: Container(

          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child:  GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 9,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
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
                      ],
                    ).box.rounded.white.make().onTap(() {
                      Get.to(()=>Category_Details(title:categorilist[index])) ;
                    }),
                  );
                }).box.gray200.rounded.make(),
          ),
        ),
      ),
    ));
  }
}
