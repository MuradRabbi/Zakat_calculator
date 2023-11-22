import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

import '../../../app_utils/app_colors.dart';
import '../../../app_utils/appfonts.dart';



class StepTwoInputField extends StatelessWidget {

  TextEditingController qtyController;
  TextEditingController presentPriceController;
  TextEditingController totalPriceController;
  String assetName;
  String? fieldDescription;

   StepTwoInputField({
    required this.qtyController,
     required this.presentPriceController,
     required this.totalPriceController,
     required this.assetName,
     this.fieldDescription,
     super.key
   });




  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.centerLeft,
                height: 40,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(width: 1.0, color: AppColors.appThemeColor),
                ),
                child: Text(assetName, textScaleFactor: 1.0, style: TextStyle(color: AppColors.blackTextColor, fontSize: 14, fontWeight: FontWeight.w500, fontFamily: AppFonts.RalewayRegular),),
              ),
            ),
            SizedBox(width: 3,),
            Expanded(
              flex: 1,
              child: Container(
                  padding: EdgeInsets.only(right: 10),
                  alignment: Alignment.centerRight,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(width: 1.0, color: AppColors.appThemeColor),
                  ),
                  child: TextField(
                    cursorColor: AppColors.blackTextColor,
                    controller: qtyController,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.done,
                    textAlign: TextAlign.end,
                    decoration: InputDecoration(
                        isDense: true,
                        hintText: "0",
                        hintStyle: TextStyle(color: AppColors.blackTextColor, fontSize: 16, fontWeight: FontWeight.w500, fontFamily: AppFonts.RalewayRegular),
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none
                    ),
                  )
              ),
            ),
            SizedBox(width: 3,),
            Expanded(
              flex: 1,
              child: Container(
                  padding: EdgeInsets.only(right: 10),
                  alignment: Alignment.center,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(width: 1.0, color: AppColors.appThemeColor),
                  ),
                  child:TextField(
                    cursorColor: AppColors.blackTextColor,
                    controller: presentPriceController,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.done,
                    textAlign: TextAlign.end,
                    decoration: InputDecoration(
                        isDense: true,
                        hintText: "0",
                        hintStyle: TextStyle(color: AppColors.blackTextColor, fontSize: 16, fontWeight: FontWeight.w500, fontFamily: AppFonts.RalewayRegular),
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none
                    ),
                  )
              ),
            ),
            SizedBox(width: 3,),
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.centerRight,
                padding: EdgeInsets.only(right: 10),
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(width: 1.0, color: AppColors.appThemeColor),
                ),
                child: TextField(
                  cursorColor: AppColors.blackTextColor,
                  controller: totalPriceController,
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.done,
                  textAlign: TextAlign.end,
                  decoration: InputDecoration(
                      isDense: true,
                      hintText: "0",
                      hintStyle: TextStyle(color: AppColors.blackTextColor, fontSize: 16, fontWeight: FontWeight.w500, fontFamily: AppFonts.RalewayRegular),
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none
                  ),
                )
              ),
            ),
          ],
        ),
        SizedBox(height: 5,),
        Text(fieldDescription!,textScaleFactor: 1.0, style: TextStyle(color: AppColors.blackTextColor, fontSize: 12, fontWeight: FontWeight.w600, fontFamily: AppFonts.RalewayRegular)),
        SizedBox(height: 5,),
        Container(height: 1, color: AppColors.appThemeColor,),


      ],
    );
  }
}
