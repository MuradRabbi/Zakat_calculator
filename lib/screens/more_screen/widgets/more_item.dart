import 'package:flutter/material.dart';

import '../../../app_utils/app_colors.dart';



class MoreItem extends StatelessWidget {
  String itemIcon;
  String itemName;

  MoreItem({
    required this.itemIcon,
    required this.itemName,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        SizedBox(width: 10,),
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
              child: Image.asset(itemIcon, color: Colors.white,),
            ),
          ),
        ),
        SizedBox(width: 10,),
        Text(itemName,style: TextStyle(color: AppColors.blackTextColor, fontSize: 16, fontWeight: FontWeight.w600),),
      ],
    );
  }
}
