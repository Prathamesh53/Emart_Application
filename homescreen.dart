import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/controller/home_controller.dart';
import 'package:emart_app/views/Cart_Screen/Cart_Screen.dart';
import 'package:emart_app/views/Category_screen/category_screen.dart';
import 'package:emart_app/views/Profile_Screen/Profile_Screen.dart';
import 'package:emart_app/views/home_screen/homescreen2.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controller= Get.put(HomeControler());
    var items=[
      BottomNavigationBarItem(icon: Image.asset(icHome,width: 30,),label: "Home") ,
      BottomNavigationBarItem(icon: Image.asset(icCategories,width: 30,),label: "Categories") ,
      BottomNavigationBarItem(icon: Image.asset(icCart,width: 30,),label: "Cart") ,
      BottomNavigationBarItem(icon: Image.asset(icProfile,width: 25,),label: "Profile") ,
    ] ;
    var body=[
     const homescreen2(),const Category_Screen(),const Cart_Screen(),const Profile_Screen()
    ] ;
    return Scaffold(
      body: Obx(
          ()=> Container(
          child: body.elementAt(controller.CurrentIndex.value),

        ),
      ),
      bottomNavigationBar: Obx(()=>
         BottomNavigationBar(
           onTap: (value){
             controller.CurrentIndex.value=value;
           },
           currentIndex: controller.CurrentIndex.value,
           items: items,backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.red,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),),
      ),
    );
  }
}
