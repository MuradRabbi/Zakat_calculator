import 'package:flutter/material.dart';
import 'package:zakat_calculator/screens/calculator_screen/calculator_step_five/widgets/step_five_input_field.dart';
import 'package:zakat_calculator/screens/calculator_screen/calculator_step_five/widgets/step_five_table_head.dart';

import '../../../../app_utils/app_colors.dart';
import '../../../../app_utils/appfonts.dart';
import '../../../../app_utils/size_config.dart';
import '../../../../const_and_globals/globals.dart';



class StepFiveTable extends StatelessWidget {
  StepFiveTable({super.key});



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StepFiveTableHead(),
        SizedBox(height: getProportionateScreenHeight(10),),
        StepFiveInputField(fieldTitle: "১। সাংসারিক প্রয়োজনে গৃহীত ঋণ", fieldController: stepFiveField1Controller, fieldDescription: "",height1: 50, height2: 50,),
        SizedBox(height: getProportionateScreenHeight(10),),
        StepFiveInputField(fieldTitle: "২। ব্যক্তিগত পর্যায়ের সকল ঋণ", fieldController: stepFiveField2Controller, fieldDescription: "",height1: 50, height2: 50,),
        SizedBox(height: getProportionateScreenHeight(10),),
        StepFiveInputField(fieldTitle: "৩। এমন ব্যবসার সকল ঋণ যার উপর নিজের এবং সংসারের খরচ নির্ভরশীল", fieldController: stepFiveField3Controller, fieldDescription: "",height1: 50, height2: 50,),
        SizedBox(height: getProportionateScreenHeight(10),),
        StepFiveInputField(fieldTitle: "৪। পেছনের বকেয়া বাড়ি ভাড়া, ইউটিলিটি বিল, ট্যাক্স", fieldController: stepFiveField4Controller, fieldDescription: "",height1: 50, height2: 50,),
        SizedBox(height: getProportionateScreenHeight(10),),
        StepFiveInputField(fieldTitle: "৫। যাকাত বর্ষের ভেতরের বকেয়া কর্মচারীর বেতন-ভাতা", fieldController: stepFiveField5Controller, fieldDescription: "",height1: 50, height2: 50,),
        SizedBox(height: getProportionateScreenHeight(10),),
        StepFiveInputField(fieldTitle: "৬। ব্যবসায়িক লেনদেনের ঋণ (পণ্য ক্রয় বা ভাড়া বাবদ কোনো ব্যক্তি বা প্রতিষ্ঠান যা পাবে)", fieldController: stepFiveField6Controller, fieldDescription: "",height1: 50, height2: 50,),
        SizedBox(height: getProportionateScreenHeight(10),),
        StepFiveInputField(fieldTitle: "৭। ডেভেলপমেন্ট ঋনের যে অংশ যাকাতযোগ্য সম্পদ ক্রয়ের পেছনে ব্যয় হয়েছে", fieldController: stepFiveField7Controller, fieldDescription: "",height1: 50, height2: 50,),
        SizedBox(height: getProportionateScreenHeight(10),),
        StepFiveInputField(fieldTitle: "৬। ইনস্টলমেন্টের ভিত্তিতে কিস্তিতে প্রদেয় মেয়াদি ঋণের যতটুকু এক বছরে পরিশোধ করতে হবে", fieldController: stepFiveField8Controller, fieldDescription: "",height1: 50, height2: 50,),
        SizedBox(height: getProportionateScreenHeight(10),),
        StepFiveInputField(fieldTitle: "৭। স্ত্রীর মোহর ", fieldController: stepFiveField9Controller, fieldDescription: "(যদি তা এই যাকাত বর্ষে আদায়ের নিয়ত করে; নতুবা নয়)",height1: 50, height2: 50,),
        SizedBox(height: 5,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("যাকাত থেকে বিয়োগযোগ্য \nসম্পদের পরিমাণ", style: TextStyle(color: AppColors.blackTextColor, fontSize: 14, fontWeight: FontWeight.w900, fontFamily: AppFonts.RalewayRegular),),
            Text("0", style: TextStyle(color: AppColors.blackTextColor, fontSize: 14, fontWeight: FontWeight.w900, fontFamily: AppFonts.RalewayRegular),),
          ],
        )
      ],
    );
  }
}
