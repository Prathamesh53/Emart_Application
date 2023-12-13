import 'package:emart_app/common_widgets/applogo_widget.dart';
import 'package:emart_app/common_widgets/background.dart';
import 'package:emart_app/common_widgets/common_button.dart';
import 'package:emart_app/consts/consts.dart';
import 'package:flutter/material.dart';

import '../../common_widgets/custom_textfield.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool cheakboxvalue=false;
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
              SizedBox(height: context.screenHeight*0.03,) ,
              Text("Join The Emart",style:TextStyle(fontSize: 23 ,fontWeight:FontWeight.w900,color: Colors.white),),
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
                      padding: const EdgeInsets.all(4.0),
                      child: Container(


                          color: Colors.white,
                          child: customTextField("Name","abc@gmail.com")),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(


                          color: Colors.white,
                          child: customTextField("Email","abc@gmail.com")),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(


                          color: Colors.white,
                          child: customTextField("Password","96*******8")),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(


                          color: Colors.white,
                          child: customTextField("Rewrite Password","abc@gmail.com")),
                    ),
                    HeightBox(1),

                    HeightBox(4),
                    Center(
                      child: Row(
                        children: [
                          GestureDetector(
                            child: Checkbox(
                                checkColor: Colors.red,

                                value: cheakboxvalue, onChanged: (value){
                              setState(() {
                                cheakboxvalue=value!;
                              });
                            }),
                          ),
                          Expanded(child: Text("I agree to the Terms and Condition & Privacy Policy",style: TextStyle(color: Colors.red),),)
                        ],
                      ),
                    ),

                    Container(


                        width: context.screenWidth-100,
                        child: button("Sign Up",(){},15)),
                    HeightBox(10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have an account"),
                        TextButton(
                          onPressed: (){
                            Navigator.pop(context);
                          },
                          child:Text("Log in") ,

                        ),
                      ],
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
