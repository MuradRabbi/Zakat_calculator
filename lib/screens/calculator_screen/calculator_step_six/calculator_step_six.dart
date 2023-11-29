import 'package:flutter/material.dart';

import '../../../app_utils/app_colors.dart';
import '../../../app_utils/appfonts.dart';
import '../../../app_utils/size_config.dart';
import '../../../custom_widgets/calculator_steps_title.dart';




class CalculatorStepSix extends StatefulWidget {
  const CalculatorStepSix({super.key});

  @override
  State<CalculatorStepSix> createState() => _CalculatorStepSixState();
}

class _CalculatorStepSixState extends State<CalculatorStepSix> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          CalculatorStepsTitle(stepsTitle: "পঞ্চম ধাপ"),
          SizedBox(height: getProportionateScreenHeight(8),),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text("গ.যাকাতের চূড়ান্ত হিসাব", style: TextStyle(color: AppColors.blackTextColor, fontSize: 16, fontWeight: FontWeight.w700, fontFamily: AppFonts.RalewayRegular),),
          ),
          SizedBox(height: getProportionateScreenHeight(8),),
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(  
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: AppColors.appThemeColor, width: 2.0)
            ),
            child: Text('''প্রথম তালিকা অনুযায়ী আপনার মোট যাকাতযোগ্য সম্পদের পরিমাণ যা হয়েছে তা থেকে দ্বিতীয় তালিকা অনুযায়ী বিয়োগযোগ্য মোট ঋণের পরিমাণ বিয়োগ করা হয়েছে। এরপর অবশিষ্ট সম্পদের চল্লিশ ভাগের একভাগ তথা ২.৫% আপনার যাকাত হিসেবে ধার্য করা হয়েছে।''', textAlign: TextAlign.justify,style: TextStyle(color: AppColors.blackTextColor, fontSize: 14, fontWeight: FontWeight.w400, fontFamily: AppFonts.RalewayRegular),),
          ),
          SizedBox(height: getProportionateScreenHeight(20),),
          Column(
            children: [
              Container(

                padding: EdgeInsets.symmetric(horizontal: 8 , vertical: 12),
                decoration: BoxDecoration(
                    color: AppColors.appThemeColor.withOpacity(0.25),
                  borderRadius: BorderRadius.circular(8)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("মোট যাকাতযোগ্য সম্পদ (ক)",style: TextStyle(color: AppColors.blackTextColor, fontSize: 14, fontWeight: FontWeight.w700, fontFamily: AppFonts.RalewayRegular),),
                    Text("0",style: TextStyle(color: AppColors.blackTextColor, fontSize: 14, fontWeight: FontWeight.w700, fontFamily: AppFonts.RalewayRegular),)
                  ],
                ),
              ),
              Container(

                padding: EdgeInsets.symmetric(horizontal: 8 , vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("যাকাত থেকে বিয়োগযোগ্য সম্পদ (খ)",style: TextStyle(color: AppColors.blackTextColor, fontSize: 14, fontWeight: FontWeight.w700, fontFamily: AppFonts.RalewayRegular),),
                    Text("0",style: TextStyle(color: AppColors.blackTextColor, fontSize: 14, fontWeight: FontWeight.w700, fontFamily: AppFonts.RalewayRegular),)
                  ],
                ),
              ),
              Container(

                padding: EdgeInsets.symmetric(horizontal: 8 , vertical: 12),
                decoration: BoxDecoration(
                    color: AppColors.appThemeColor.withOpacity(0.25),
                    borderRadius: BorderRadius.circular(8)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("= বিয়োগফল (নেট যাকাতযোগ্য সম্পদ)",style: TextStyle(color: AppColors.blackTextColor, fontSize: 14, fontWeight: FontWeight.w700, fontFamily: AppFonts.RalewayRegular),),
                    Text("0",style: TextStyle(color: AppColors.blackTextColor, fontSize: 14, fontWeight: FontWeight.w700, fontFamily: AppFonts.RalewayRegular),)
                  ],
                ),
              ),
              Container(

                padding: EdgeInsets.symmetric(horizontal: 8 , vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("বিয়োগফল X ২.৫%",style: TextStyle(color: AppColors.blackTextColor, fontSize: 14, fontWeight: FontWeight.w700, fontFamily: AppFonts.RalewayRegular),),
                    Text("2.5%",style: TextStyle(color: AppColors.blackTextColor, fontSize: 14, fontWeight: FontWeight.w700, fontFamily: AppFonts.RalewayRegular),)
                  ],
                ),
              ),
              Container(

                padding: EdgeInsets.symmetric(horizontal: 8 , vertical: 12),
                decoration: BoxDecoration(
                    color: AppColors.appThemeColor.withOpacity(0.25),
                    borderRadius: BorderRadius.circular(8)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("মোট যাকাত",style: TextStyle(color: AppColors.blackTextColor, fontSize: 14, fontWeight: FontWeight.w700, fontFamily: AppFonts.RalewayRegular),),
                    Text("0",style: TextStyle(color: AppColors.blackTextColor, fontSize: 14, fontWeight: FontWeight.w700, fontFamily: AppFonts.RalewayRegular),)
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
