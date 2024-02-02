import 'dart:ffi';

import 'package:flutter/material.dart';

import '../../../../app_utils/app_colors.dart';
import '../../../../app_utils/appfonts.dart';
import '../../../../app_utils/size_config.dart';



class StepThreeInputField extends StatelessWidget {
  String fieldTitle;
  String? fieldDescription;
  TextEditingController fieldController;
  double? height1;
  double? height2;
  StepThreeInputField({
    required this.fieldTitle,
    this.fieldDescription,
    required this.fieldController,
    this.height1 = 40.0,
    this.height2 = 40.0,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                height: getProportionateScreenHeight(height1!),
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(width: 1.0, color: AppColors.appThemeColor),
                ),
                child: Text(fieldTitle, textScaleFactor: 1.0, style: TextStyle(color: AppColors.blackTextColor, fontSize: 14, fontWeight: FontWeight.w500, fontFamily: AppFonts.RalewayRegular),),
              ),
            ),
            SizedBox(width:getProportionateScreenWidth(6),),
            Expanded(
              flex: 1,
              child: Container(
                  padding: EdgeInsets.only(right: 10),
                  alignment: Alignment.centerRight,
                  height: getProportionateScreenHeight(height2!),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(width: 1.0, color: AppColors.appThemeColor),
                  ),
                  child: inputField(fieldController)
              ),
            ),

          ],
        ),
        const SizedBox(height: 5,),
        fieldDescription == "" ? const SizedBox() : Text(fieldDescription!,textScaleFactor: 1.0, style: TextStyle(color: AppColors.blackTextColor, fontSize: 12, fontWeight: FontWeight.w600, fontFamily: AppFonts.RalewayRegular)),
        const SizedBox(height: 5,),
        Container(height: 1, color: AppColors.appThemeColor,),


      ],
    );
  }

  TextField inputField(TextEditingController controller){
    return  TextField(
      cursorColor: AppColors.blackTextColor,
      controller: controller,
      keyboardType: TextInputType.number,
      textInputAction: TextInputAction.done,
      textAlign: TextAlign.end,
      decoration: InputDecoration(
          isDense: true,
          hintText: "0.0",
          hintStyle: TextStyle(color: AppColors.blackTextColor, fontSize: 16, fontWeight: FontWeight.w500, fontFamily: AppFonts.RalewayRegular),
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none
      ),
    );
  }
}

