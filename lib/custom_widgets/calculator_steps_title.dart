import 'package:flutter/material.dart';

import '../app_utils/app_colors.dart';
import '../app_utils/appfonts.dart';


class CalculatorStepsTitle extends StatelessWidget {
  String stepsTitle;
  CalculatorStepsTitle({
    required this.stepsTitle,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        const SizedBox(width: 15,),
        Text(stepsTitle,style: const TextStyle(color: AppColors.blackTextColor, fontSize: 18, fontWeight: FontWeight.w700, fontFamily: AppFonts.RalewayRegular),),
        const SizedBox(width: 15,),
        SizedBox(
          height: 18,
          width: 24,
          child: Image.asset("assets/images/step.png", color: AppColors.blackTextColor,),
        ),
      ],
    );
  }
}
