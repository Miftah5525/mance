import 'package:flutter/material.dart';
import 'package:intermediate_practice/constants/app_colors.dart';


class Options extends StatelessWidget {
  final String tile_data;
  final  onTap;
  final Leading;
  const Options({
    super.key, 
    required this.tile_data, 
    required this.onTap, this.Leading, 
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      width: MediaQuery.sizeOf(context).width * 0.7,
      child: ListTile(
        title: Text(tile_data,style: TextStyle(color: APPColors.appColor1,fontSize: 30),),
        onTap: onTap,
        leading: Leading,
      ),
    );
  }
}