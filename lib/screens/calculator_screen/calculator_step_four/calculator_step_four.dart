import 'package:flutter/material.dart';
import 'package:zakat_calculator/custom_widgets/calculator_steps_title.dart';
import 'package:zakat_calculator/screens/calculator_screen/calculator_step_four/widgets/step_four_table.dart';
import '../../../app_utils/app_colors.dart';
import '../../../app_utils/appfonts.dart';




class CalculatorStepFour extends StatefulWidget {
  const CalculatorStepFour({Key? key}) : super(key: key);

  @override
  State<CalculatorStepFour> createState() => _CalculatorStepFourState();
}

class _CalculatorStepFourState extends State<CalculatorStepFour> {

  TextEditingController field1Controller = TextEditingController();
  TextEditingController field2Controller = TextEditingController();
  TextEditingController field3Controller = TextEditingController();
  TextEditingController field4Controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView(
        children: [
         CalculatorStepsTitle(stepsTitle: "চতুর্থ ধাপ"),
          SizedBox(height: 15,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text("ক (৩). ব্যবসায়িক সম্পদ", style: TextStyle(color: AppColors.blackTextColor, fontSize: 16, fontWeight: FontWeight.w700, fontFamily: AppFonts.RalewayRegular),),
          ),
          SizedBox(height: 10,),
          StepFourTable()
        ],
      ),
    );
  }
}
