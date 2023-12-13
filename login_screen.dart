import 'package:emart_app/common_widgets/applogo_widget.dart';
import 'package:emart_app/common_widgets/background.dart';
import 'package:emart_app/common_widgets/common_button.dart';
import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/views/home_screen/homescreen.dart';
import 'package:emart_app/views/login_screen/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../common_widgets/custom_textfield.dart';

class loginScreen extends StatelessWidget {
  const loginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return bgWidget(Scaffold(
      resizeToAvoidBottomInset: false,


      body:
          Center(

            child:

            Column(
              children: [
                SizedBox(height: context.screenHeight*0.08,) ,
                Container(
                  color: Colors.white,
                  child: applogo()),
                  HeightBox(12),
                Text("Login to Apna Mart",style: TextStyle(fontSize: 23 ,fontWeight:FontWeight.w900,color: Colors.white),),
                SizedBox(height: context.screenHeight*0.04,) ,
                Container(
                  decoration: BoxDecoration(
                    
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(color: Colors.black87,
                      blurRadius: 15,spreadRadius:0)
                    ]
                  ),
                  width: context.screenWidth*0.9,


                  child: Column(


                    children: [

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(


                          color: Colors.white,
                            child: customTextField("EMAIL","abc@gmail.com")),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(


                            color: Colors.white,
                            child: customTextField("Password","96*******8")),
                      ),
                      HeightBox(1),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                            onPressed:(){}, child:
                        Text("Forget Password"),

                        ),
                      ),
                      HeightBox(1),
                      Container(
                          width: context.screenWidth-50,
                          child: button("log in",(){
                            Get.to(HomeScreen());
                          },15)),
                      HeightBox(4),
                      Text("OR CREAT NEW ACCOUNT"),
                      Container(
                          width: context.screenWidth-50,
                          child: button("Sign Up",(){
                            Get.to(()=>SignupScreen());
                          },15)),
                      HeightBox(10),
                      Text("Log in with"),
                      HeightBox(10),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                  child: Image.asset(icFacebookLogo),backgroundColor: Colors.greenAccent,),
                            ),
                            WidthBox(10),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(child: Image.asset(icGoogleLogo),backgroundColor: Colors.transparent,),
                            ),
                            WidthBox(10),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(child: Image.asset(icTwitterLogo)),
                            ),
                          ],
                        ),
                      ),
                      HeightBox(10),





                      ElevatedButton(
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        child:Text("Back") ,

                      ),
                    ],

                  ),
                ),
              ],
            ),
          )

    )) ;
  }
}
