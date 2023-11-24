import 'package:flutter/material.dart';
import 'package:zakat_calculator/app_utils/size_config.dart';
import 'package:zakat_calculator/custom_widgets/calculator_steps_title.dart';
import 'package:zakat_calculator/screens/calculator_screen/calculator_step_two/widgets/step_two_table.dart';
import '../../../app_utils/app_colors.dart';
import '../../../app_utils/appfonts.dart';




class CalculatorStepTwo extends StatefulWidget {
  const CalculatorStepTwo({Key? key}) : super(key: key);

  @override
  State<CalculatorStepTwo> createState() => _CalculatorStepTwoState();
}

class _CalculatorStepTwoState extends State<CalculatorStepTwo> {

  TextEditingController goldQtyController = TextEditingController();
  TextEditingController goldSalePriceController = TextEditingController();
  TextEditingController silverSalePriceController = TextEditingController();
  TextEditingController silverQtyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SizedBox(
      child: ListView(
        children: [
          CalculatorStepsTitle(stepsTitle: "দ্বিতীয় ধাপ"),
          SizedBox(height: getProportionateScreenHeight(15),),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text("ক. যে সকল সম্পদের উপর যাকাত ফরয", style: TextStyle(color: AppColors.blackTextColor, fontSize: 18, fontWeight: FontWeight.w700, fontFamily: AppFonts.RalewayRegular),),
          ),
          SizedBox(height: getProportionateScreenHeight(10),),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text("ক (১). স্বর্ণ-রূপা", style: TextStyle(color: AppColors.blackTextColor, fontSize: 16, fontWeight: FontWeight.w700, fontFamily: AppFonts.RalewayRegular),),
          ),
          SizedBox(height: getProportionateScreenHeight(10),),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text("*** পরিমাণ (ভরি, গ্রাম ইত্যাদি এককে), বর্তমান বিক্রয় মূল্য (একক অনুযায়ী) , মূল্যমান (টাকা)।", style: TextStyle(color: AppColors.appThemeColor, fontSize: 12, fontWeight: FontWeight.w600, fontFamily: AppFonts.RalewayRegular),),
          ),
          SizedBox(height: 10,),
          StepTwoTable(),
          SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("মোট স্বর্ণ-রূপা", style: TextStyle(color: AppColors.blackTextColor, fontSize: 14, fontWeight: FontWeight.w900, fontFamily: AppFonts.RalewayRegular),),
              Text("0", style: TextStyle(color: AppColors.blackTextColor, fontSize: 14, fontWeight: FontWeight.w900, fontFamily: AppFonts.RalewayRegular),),
            ],
          )

        ],
      ),
    );
  }
}
