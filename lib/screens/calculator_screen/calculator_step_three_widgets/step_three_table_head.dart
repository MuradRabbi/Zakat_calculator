import 'package:flutter/material.dart';
import 'package:zakat_calculator/app_utils/size_config.dart';

import '../../../app_utils/app_colors.dart';
import '../../../app_utils/appfonts.dart';


class StepThreeTableHead extends StatelessWidget {
  const StepThreeTableHead({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            alignment: Alignment.center,
            height: getProportionateScreenHeight(40),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: AppColors.appThemeColor,
            ),
            child: Text("সম্পদের নাম",textScaleFactor: 1.0, style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500, fontFamily: AppFonts.RalewayRegular),),
          ),
        ),
        SizedBox(width: getProportionateScreenWidth(6),),
        Expanded(
          flex: 1,
          child: Container(
            alignment: Alignment.center,
            height:getProportionateScreenHeight(40),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: AppColors.appThemeColor,
            ),
            child: Text("পরিমাণ (টাকা)",textAlign: TextAlign.center , textScaleFactor: 1.0, style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500, fontFamily: AppFonts.RalewayRegular),),
          ),
        ),
      ],
    );
  }
}
