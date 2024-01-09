import 'package:flutter/material.dart';
import 'package:zakat_calculator/app_utils/size_config.dart';
import 'package:zakat_calculator/screens/calculator_screen/calculator_step_five/widgets/step_five_table.dart';

import '../../../app_utils/app_colors.dart';
import '../../../app_utils/appfonts.dart';
import '../../../custom_widgets/calculator_steps_title.dart';




class CalculatorStepFive extends StatelessWidget {
  const CalculatorStepFive({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          CalculatorStepsTitle(stepsTitle: "পঞ্চম ধাপ"),
          SizedBox(height: getProportionateScreenHeight(10),),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text("খ. যাকাতের সম্পদ থেকে বিয়োগযোগ্য ঋণ", style: TextStyle(color: AppColors.blackTextColor, fontSize: 16, fontWeight: FontWeight.w700, fontFamily: AppFonts.RalewayRegular),),
          ),
          SizedBox(height: getProportionateScreenHeight(10),),
          StepFiveTable()
        ],
      ),
    );
  }
}
