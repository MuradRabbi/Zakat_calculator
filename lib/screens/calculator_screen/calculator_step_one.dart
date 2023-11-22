import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:zakat_calculator/app_utils/size_config.dart';
import 'package:zakat_calculator/custom_widgets/calculator_steps_title.dart';
import 'package:zakat_calculator/screens/calculator_screen/calculator_step_one_widgets/buttet_item.dart';
import 'package:zakat_calculator/screens/calculator_screen/calculator_step_one_widgets/date_input_field.dart';
import '../../app_utils/app_colors.dart';
import '../../app_utils/appfonts.dart';
import 'calculator_step_one_widgets/name_input_field.dart';




class CalculatorStepOne extends StatefulWidget {
  const CalculatorStepOne({Key? key}) : super(key: key);

  @override
  State<CalculatorStepOne> createState() => _CalculatorStepOneState();
}

class _CalculatorStepOneState extends State<CalculatorStepOne> {





  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SizedBox(
      child: Column(
        children: [
          SizedBox(height: getProportionateScreenHeight(25),),
          CalculatorStepsTitle(stepsTitle: "প্রথম ধাপ"),
          SizedBox(height: getProportionateScreenHeight(10),),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15,),
            child: Column(
              children: [
                Text("আপনার যাকাতের হিসাব বের করার জন্য ধারাবাহিকভাবে নিন্মোল্লেখিত সংশ্লিষ্ট ঘরগুলো যত্নের সাথে পূরণ করুন। মনে রাখবেন - ",
                  style: TextStyle(color: AppColors.blackTextColor, fontSize: 14, fontFamily: AppFonts.RalewayRegular, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: getProportionateScreenHeight(15),),
                BulletItem(title: "সকল সংখ্যা শুধুমাত্র ইংরেজি ডিজিটে, পজিটিভ নাম্বার ইনপুট দিতে হবে।",),
                SizedBox(height: getProportionateScreenHeight(15),),
                BulletItem(title: "ইনপুট দেওয়ার সময় কমা (,) বা অন্য কোন ফরম্যাটিং ব্যাবহার করবেন না।",),
                SizedBox(height: getProportionateScreenHeight(15),),
                BulletItem(title: "কোন সেকশন বুঝতে অসুবিধা হলে নির্ভরযোগ্য আলেমের সাথে আলোচনা করে নিন।",),
              ],
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(30),),
          NameInputField(),
          SizedBox(height: getProportionateScreenHeight(30),),
          const DateInputField(),
        ],
      ),
    );
  }
}
