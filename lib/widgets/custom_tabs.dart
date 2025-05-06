import 'package:flutter/material.dart';
import 'package:intermediate_practice/constants/app_colors.dart';


class Tabs extends StatelessWidget {
  final String Tab_name;
  const Tabs({super.key, required this.Tab_name});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.35,
      margin: EdgeInsets.only(right: 0.5),
      decoration: BoxDecoration(
        color: APPColors.appColor1,
        borderRadius: BorderRadius.circular(20),

      ),
      padding: EdgeInsets.all(MediaQuery.sizeOf(context).width * 0.03),
      child: Text(
        Tab_name,
        textAlign: TextAlign.center,
        style: TextStyle(color: APPColors.appColor2,fontSize: 15),),
      
    );
  }
}