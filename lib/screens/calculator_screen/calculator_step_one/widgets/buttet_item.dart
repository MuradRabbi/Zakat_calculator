import 'package:flutter/material.dart';

import '../../../../app_utils/app_colors.dart';
import '../../../../app_utils/appfonts.dart';



class BulletItem extends StatelessWidget {
  String title;
      BulletItem({
        required this.title,
        super.key
      });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          color: AppColors.appThemeColor,
          padding: EdgeInsets.all(2.0),
          height: 16,
          width: 16,
          child: Image.asset("assets/images/bullet-point.png",color: Colors.white,),
        ),
        SizedBox(width: 10,),
        Flexible(
          child: Text(title,
            style: TextStyle(color: AppColors.blackTextColor, fontSize: 14, fontFamily: AppFonts.RalewayRegular, fontWeight: FontWeight.w500),
          ),
        ),

      ],
    );
  }
}
