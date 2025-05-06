import 'package:flutter/material.dart';
import 'package:intermediate_practice/constants/app_colors.dart';


class custom_button extends StatelessWidget {

  final String text;
  final onpressed;
  
  const custom_button({super.key, required this.text, required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onpressed, 
      style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(APPColors.appColor1),
                  fixedSize: WidgetStatePropertyAll(Size(400, 50))
                ),
      child: Text(text,style: TextStyle(color: APPColors.appColor2,fontSize: 20),),
      );
  }
}