import 'package:flutter/material.dart';
import 'package:zakat_calculator/app_utils/size_config.dart';
import 'package:zakat_calculator/screens/calculator_screen/calculator_step_four/widgets/step_four_input_field.dart';
import 'package:zakat_calculator/screens/calculator_screen/calculator_step_four/widgets/step_four_table_head.dart';
import '../../../../app_utils/app_colors.dart';
import '../../../../app_utils/appfonts.dart';
import '../../../../const_and_globals/globals.dart';



class StepFourTable extends StatelessWidget {
  StepFourTable({super.key});



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StepFourTableHead(),
        SizedBox(height: getProportionateScreenHeight(10),),
        StepFourInputField(fieldTitle: "১। ব্যবসার উদ্দেশ্যে ক্রয়কৃত জমি, প্লট", fieldController: stepFourField1Controller, fieldDescription: "(যা কেনা হয়েছে বিক্রির নিয়তে।বর্তমান বিক্রয় মূল্য।)",height1: 50, height2: 50,),
        SizedBox(height: getProportionateScreenHeight(10),),
        StepFourInputField(fieldTitle: "২। ব্যবসার উদ্দেশ্যে ক্রয়কৃত ফ্ল্যাট, বাড়ি", fieldController: stepFourField2Controller, fieldDescription: "(যা কেনা হয়েছে বিক্রির নিয়তে, ভাড়ায় প্রদত্ত ফ্ল্যাট বা বাড়ি নয়।বর্তমান বিক্রয় মূল্য।)",height1: 50, height2: 50,),
        SizedBox(height: getProportionateScreenHeight(10),),
        StepFourInputField(fieldTitle: "৩। ব্যবসার গাড়ি", fieldController: stepFourField3Controller, fieldDescription: "(যা কেনা হয়েছে বিক্রির নিয়তে, ভাড়ায় চালিত গাড়ি নয়।বর্তমান বিক্রয় মূল্য।)",height1: 50, height2: 50,),
        SizedBox(height: getProportionateScreenHeight(10),),
        StepFourInputField(fieldTitle: "৪। কোম্পানির বিক্রয়যোগ্য ব্যবসায়িক পণ্য", fieldController: stepFourField4Controller, fieldDescription: "(বর্তমান বিক্রয় মূল্য।)",height1: 50, height2: 50,),
        SizedBox(height: getProportionateScreenHeight(10),),
        StepFourInputField(fieldTitle: "৫। সকল ব্যবসার বিক্রয়যোগ্য পণ্য", fieldController: stepFourField5Controller, fieldDescription: "(বর্তমান বিক্রয় মূল্য।)",height1: 50, height2: 50,),
        SizedBox(height: getProportionateScreenHeight(10),),
        StepFourInputField(fieldTitle: "৬। ব্যবসায়িক পণ্য তৈরির মজুদ কাঁচামাল", fieldController: stepFourField6Controller, fieldDescription: "(বর্তমান বিক্রয় মূল্য।)",height1: 50, height2: 50,),
        SizedBox(height: getProportionateScreenHeight(10),),
        StepFourInputField(fieldTitle: "৭। ব্যবসার জন্য ক্রয়কৃত পশু-প্রাণী", fieldController: stepFourField7Controller, fieldDescription: "(গরু, ছাগল, মাছ মুরগি ইত্যাদি।বর্তমান বিক্রয় মূল্য।)",height1: 50, height2: 50,),
        SizedBox(height: 5,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("মোট ব্যবসায়িক সম্পদ", style: TextStyle(color: AppColors.blackTextColor, fontSize: 14, fontWeight: FontWeight.w900, fontFamily: AppFonts.RalewayRegular),),
            Text("0", style: TextStyle(color: AppColors.blackTextColor, fontSize: 14, fontWeight: FontWeight.w900, fontFamily: AppFonts.RalewayRegular),),
          ],
        )
      ],
    );
  }
}
