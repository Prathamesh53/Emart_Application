import 'package:emart_app/consts/consts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cart_Screen extends StatelessWidget {
  const Cart_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
     child: "YOUR CART IS EMPTY".text.bold.makeCentered(),
    );
  }
}
