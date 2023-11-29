import 'package:flutter/material.dart';

import '../../../app_utils/app_colors.dart';
import '../../../app_utils/appfonts.dart';
import '../../../app_utils/size_config.dart';



class QnAItem extends StatelessWidget {
  String question;
  String answer;
  QnAItem({
    required this.question,
    required this.answer,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15,vertical: 7),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: AppColors.appThemeColor.withOpacity(0.10),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 1.5 , color: AppColors.appThemeColor)
      ),
      child: Column(
        children: [
          Text(question, style: TextStyle(color: AppColors.blackTextColor, fontSize: 16, fontWeight: FontWeight.w700, fontFamily: AppFonts.RalewayRegular),),
          SizedBox(height: getProportionateScreenHeight(5),),
          Text(answer, style: TextStyle(color: AppColors.blackTextColor, fontSize: 14, fontWeight: FontWeight.w500, fontFamily: AppFonts.RalewayRegular),)
        ],
      ),
    );
  }
}
