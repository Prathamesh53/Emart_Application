import 'package:emart_app/common_widgets/background.dart';
import 'package:emart_app/consts/consts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../consts/list.dart';

class Profile_Screen extends StatelessWidget {
  const Profile_Screen({super.key});

  get separatorBuilder => null;

  @override
  Widget build(BuildContext context) {
    return bgWidget(
     Scaffold(
  body:
       SafeArea(
         child: Container(
           child: Column(
             children: [
               Row(
                 children: [
                   Image.asset(imgProfile,width: 100,fit: BoxFit.cover).box.clip(Clip.antiAlias).roundedFull.make(),
                   Column(
                     children:[
                     "Prathamesh D Shinde".text.size(16).bold.white.make(),
                       "User Id : Prathamesh53".text.white.make(),

           ]
                   ),
                   Spacer(),
                   OutlinedButton(

                     style: OutlinedButton.styleFrom(
                       side: BorderSide(
                         color: Colors.white
                       )
                     ),

                       onPressed: (){}, child:
                   "Logout".text.semiBold.white.make()).box.width(100).make()
                 ],
               ),
               Row( mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Container(height: context.screenWidth*0.15,
decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(10)),
                       width: context.screenWidth*0.28,
                       child:
                       Column(
                         children:[
                           10.heightBox,
                         "00".text.bold.color(Colors.red).make(),
                           5.heightBox,
                           "Atoms in Cart".text.make(),

                         ]
                       )

                     ).box.rounded.make(),
                   ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Container(height: context.screenWidth*0.15,
                       decoration:BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(10)),
                       width: context.screenWidth*0.28,
                         child:
                         Column(
                             children:[
                               10.heightBox,
                               "00".text.bold.color(Colors.red).make(),
                               5.heightBox,
                               "Orders".text.make(),

                             ]
                         )

                     ).box.rounded.make(),
                   ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Container(height: context.screenWidth*0.15,
                       decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(10)),
                       width: context.screenWidth*0.28,
                         child:
                         Column(
                             children:[
                               10.heightBox,
                               "00".text.bold.color(Colors.red).make(),
                               5.heightBox,
                               "Favourite Items".text.make(),

                             ]
                         )

                     ).box.rounded.make(),
                   ),



                 ],
               ),
               45.heightBox,
               Padding(
                 padding: const EdgeInsets.all(12.0),
                 child: ListView.separated(
                     shrinkWrap:true,itemBuilder: (BuildContext context,index){
                   return ListTile(
                     leading: Image.asset(profile_icons[index],width: 20,),

                     title: pf_names[index].text.bold.make(),
                   ) ;
                 }, separatorBuilder: (context,index){
                   return const Divider(
                     color: Colors.grey,
                   );
                 }, itemCount: pf_names.length).box.rounded.white.shadow.make(),
               )

             ],
           ),
         ),
       ),
     )
    ) ;
  }
}
