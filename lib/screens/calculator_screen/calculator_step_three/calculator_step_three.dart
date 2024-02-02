import 'package:flutter/material.dart';
import 'package:zakat_calculator/screens/calculator_screen/calculator_step_three/widgets/step_three_table.dart';
import '../../../app_utils/app_colors.dart';
import '../../../app_utils/appfonts.dart';
import '../../../const_and_globals/globals.dart';
import '../../../custom_widgets/calculator_steps_title.dart';




class CalculatorStepThree extends StatefulWidget {
  const CalculatorStepThree({Key? key}) : super(key: key);

  @override
  State<CalculatorStepThree> createState() => _CalculatorStepThreeState();
}

class _CalculatorStepThreeState extends State<CalculatorStepThree> {

  TextEditingController field1Controller = TextEditingController();
  TextEditingController field2Controller = TextEditingController();
  TextEditingController field3Controller = TextEditingController();
  TextEditingController field4Controller = TextEditingController();
  TextEditingController field5Controller = TextEditingController();
  TextEditingController field6Controller = TextEditingController();
  TextEditingController field7Controller = TextEditingController();
  TextEditingController field8Controller = TextEditingController();
  TextEditingController field9Controller = TextEditingController();
  TextEditingController field10Controller = TextEditingController();
  TextEditingController field11Controller = TextEditingController();
  TextEditingController field12Controller = TextEditingController();
  TextEditingController field13Controller = TextEditingController();
  TextEditingController field14Controller = TextEditingController();
  TextEditingController field16Controller = TextEditingController();
  TextEditingController field17Controller = TextEditingController();
  TextEditingController field18Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          CalculatorStepsTitle(stepsTitle:"তৃতীয় ধাপ",),
          SizedBox(height: 15,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text("ক. যে সকল সম্পদের উপর যাকাত ফরয", style: TextStyle(color: AppColors.blackTextColor, fontSize: 18, fontWeight: FontWeight.w700, fontFamily: AppFonts.RalewayRegular),),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text("ক (২). টাকা-পয়সা", style: TextStyle(color: AppColors.blackTextColor, fontSize: 16, fontWeight: FontWeight.w700, fontFamily: AppFonts.RalewayRegular),),
          ),
          SizedBox(height: 10,),
          StepThreeTable(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("মোট টাকা-পয়সা", style: TextStyle(color: AppColors.blackTextColor, fontSize: 14, fontWeight: FontWeight.w900, fontFamily: AppFonts.RalewayRegular),),
              Container(
                  padding: EdgeInsets.only(right: 10),
                  alignment: Alignment.center,
                  height: 30,
                  width: 150,
                  child:TextField(
                    cursorColor: AppColors.blackTextColor,
                    controller: totalCashController,
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.done,
                    textAlign: TextAlign.end,
                    readOnly: true,
                    decoration: InputDecoration(
                        isDense: true,
                        hintText: "0.0",
                        hintStyle: TextStyle(color: AppColors.blackTextColor, fontSize: 16, fontWeight: FontWeight.w500, fontFamily: AppFonts.RalewayRegular),
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none
                    ),
                  )
              ),
            ],
          )


        ],
      ),
    );
  }
}
