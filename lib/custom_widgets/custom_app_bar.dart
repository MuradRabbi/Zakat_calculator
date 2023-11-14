import 'package:flutter/material.dart';

import '../app_utils/app_colors.dart';



class CustomAppBar extends StatelessWidget {

  String icon;
  String title;
  CustomAppBar({
    required this.icon,
    required this.title,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 15,),
        SizedBox(
          height: 40,
          width: 40,
          child: Card(
            elevation: 15.0,
            color: Color(0xff32a349),
            shadowColor: Colors.blueGrey ,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(6))
            ),
            child: Container(
              margin: EdgeInsets.all(6),
              child: Image.asset(icon, color: Colors.white,),
            ),
          ),
        ),
        SizedBox(width: 10,),
        Text(title,style: TextStyle(color: AppColors.blackTextColor, fontSize: 20, fontWeight: FontWeight.w700),),
      ],
    );
  }
}
