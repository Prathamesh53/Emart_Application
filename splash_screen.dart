import 'package:emart_app/common_widgets/applogo_widget.dart';
import 'package:emart_app/consts/consts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../login_screen/login_screen.dart';
class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override

  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.red,
        body: Column(
            children: [
              Image.asset(icSplashBg,width: 300,),


              Center(
                child: SizedBox(height:100,
                  width: 100,
                  child: applogo(),
                ),
              ),
              SizedBox(height: 10,),
              Text("Apna Mart",style: TextStyle(color: Colors.white,fontSize: 23),) , SizedBox(height: 10,),
             ElevatedButton(onPressed: (){



               Get.to(()=>loginScreen()) ;
             }, child: Text('LOGIN or SIGNUP'),


             ),

              Text(appversion,style: TextStyle(color: Colors.white),
              ),])

    );
  }
}












