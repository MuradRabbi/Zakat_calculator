import 'package:flutter/material.dart';

import '../../../../app_utils/app_colors.dart';
import '../../../../app_utils/appfonts.dart';
import '../../../../const_and_globals/globals.dart';



class NameInputField extends StatelessWidget {
   NameInputField({super.key});



  @override

  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      padding: EdgeInsets.only(top: 4, left: 12),
      height: 45,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(8),
          border: Border.all( width: 2.0 , color: AppColors.appThemeColor)
      ),
      child: TextField(
        cursorColor: AppColors.blackTextColor,
        controller: nameController,
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
            isDense: true,
            hintText: "আপনার নাম লিখুন",
            hintStyle: TextStyle(color: AppColors.blackTextColor, fontSize: 16, fontWeight: FontWeight.w500, fontFamily: AppFonts.RalewayRegular),
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none

        ),
      ),
    );
  }
}
