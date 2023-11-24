import 'package:flutter/material.dart';
import 'package:zakat_calculator/app_utils/size_config.dart';
import 'package:zakat_calculator/screens/calculator_screen/calculator_step_three/widgets/step_three_input_field.dart';
import '../../../../app_utils/app_colors.dart';
import '../../../../app_utils/appfonts.dart';
import '../step_three_table_head.dart';



class StepThreeTable extends StatelessWidget {
      StepThreeTable({super.key});

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
  TextEditingController field15Controller = TextEditingController();
  TextEditingController field16Controller = TextEditingController();
  TextEditingController field17Controller = TextEditingController();
  TextEditingController field18Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        StepThreeTableHead(),
        SizedBox(height: getProportionateScreenHeight(10),),
        StepThreeInputField(fieldTitle: "১। নগদ টাকা", fieldController: field1Controller, fieldDescription: "",),
        SizedBox(height: getProportionateScreenHeight(10),),
        StepThreeInputField(fieldTitle: "২। কারো কাছে গচ্ছিত আমানত", fieldController: field2Controller, fieldDescription: "",),
        SizedBox(height: getProportionateScreenHeight(10),),
        StepThreeInputField(fieldTitle: "৩। অন্যের কাছে পাওনা টাকা", fieldController: field3Controller, fieldDescription: "(যা পাওয়া নিশ্চিত বা পাওয়ার আশা আছে)",),
        SizedBox(height: getProportionateScreenHeight(10),),
        StepThreeInputField(fieldTitle: "৪। সিকিউরিটি মানি", fieldController: field4Controller, fieldDescription: "(যা সম্পূর্ণ ফেরৎযোগ্য; অ্যাডভান্স হিসেবে অফেরৎযোগ্য অগ্রিম ভাড়া নয়)",),
        SizedBox(height: getProportionateScreenHeight(10),),
        StepThreeInputField(fieldTitle: "৫। বৈদেশিক মুদ্রা", fieldController: field5Controller, fieldDescription: "(বর্তমান এক্সচেঞ্জ রেট)",),
        SizedBox(height: getProportionateScreenHeight(10),),
        StepThreeInputField(fieldTitle: "৬। ব্যাংক একাউন্টে জমাকৃত অর্থ", fieldController: field6Controller, fieldDescription: "(কারেন্ট ও সেভিংস অ্যাকাউন্ট, ফিক্সড ডিপোজিট, ডিপিএস, এফডিআর ইত্যাদি যাবতীয় অ্যাকাউন্টে জমা অর্থ।অতিরিক্ত ইন্টারেস্ট পুরোটাই সদকা করা জরুরী।)",),
        SizedBox(height: getProportionateScreenHeight(10),),
        StepThreeInputField(fieldTitle: "৭। বিশেষ জমা অ্যাকাউন্ট", fieldController: field7Controller, fieldDescription: "(হজ, বিয়ে ইত্যাদির জন্য নিজের জমাকৃত ব্যালেন্স)",),
        SizedBox(height: getProportionateScreenHeight(10),),
        StepThreeInputField(fieldTitle: "৮। স্যালারি অ্যাকাউন্ট", fieldController: field8Controller, fieldDescription: "(সাধারণ মাসিক খরচের অতিরিক্ত জমা থাকলে সে টাকা)",),
        SizedBox(height: getProportionateScreenHeight(10),),
        StepThreeInputField(fieldTitle: "৯। ব্যাংক গ্যারান্টি মানি", fieldController: field9Controller, fieldDescription: "(নিজের জমাকৃত ব্যালেন্স।অতিরিক্ত ইন্টারেস্ট পুরোটাই সদকা করা জরুরী।)",),
        SizedBox(height: getProportionateScreenHeight(10),),
        StepThreeInputField(fieldTitle: "১০। বীমায় জমাকৃত প্রিমিয়াম", fieldController: field10Controller, fieldDescription: "(নিজের জমাকৃত প্রিমিয়াম।অতিরিক্ত ইন্টারেস্ট পুরোটাই সদকা করা জরুরী।)",),
        SizedBox(height: getProportionateScreenHeight(10),),
        StepThreeInputField(fieldTitle: "১১। বন্ড, ট্রেজারী বিল, সঞ্চয়পত্র", fieldController: field11Controller, fieldDescription: "(ক্রয় মূল্য।অতিরিক্ত ইন্টারেস্ট পুরোটাই সদকা করা জরুরী।)",),
        SizedBox(height: getProportionateScreenHeight(10),),
        StepThreeInputField(fieldTitle: "১২। প্রভিডেন্ট ফান্ড", fieldController: field12Controller, fieldDescription: "(যদি ঐচ্ছিক হয়, বাধ্যতামূলক কেটে রাখা অংশের বিগত বছরের যাকাত দিতে হবে না। টাকা হস্তগত হওয়ার পর থেকে হিসাব শুরু হবে।নিজের জমাকৃত অর্থ)",),
        SizedBox(height: getProportionateScreenHeight(10),),
        StepThreeInputField(fieldTitle: "১৩। কোম্পানির শেয়ার", fieldController: field13Controller, fieldDescription: "(কোম্পানি থেকে ডিভিডেন্ড পাওয়ার উদ্দেশ্যে ক্রয়কৃত।ব্যালেন্স শিট দেখে নিজের অংশে বিদ্যমান যাকাতযোগ্য সম্পদ।)",),
        SizedBox(height: getProportionateScreenHeight(10),),
        StepThreeInputField(fieldTitle: "১৪। কোম্পানির শেয়ার", fieldController: field14Controller, fieldDescription: "(ক্যাপিটাল গেইন তথা সেকেন্ডারি মার্কেটে ব্যবসার উদ্দেশ্যে ক্রয়কৃত।বর্তমান মার্কেট ভ্যালু।)",),
        SizedBox(height: getProportionateScreenHeight(10),),
        StepThreeInputField(fieldTitle: "১৫। সমিতিতে সঞ্চিত নগদ অর্থ", fieldController: field15Controller, fieldDescription: "(নিজের জমাকৃত ব্যালেন্স)",),
        SizedBox(height: getProportionateScreenHeight(10),),
        StepThreeInputField(fieldTitle: "১৬। ব্যবসায় বিনিয়োগকৃত অর্থ", fieldController: field16Controller, fieldDescription: "(নিজের অংশে বিদ্যমান যাকাতযোগ্য সম্পদ)",),
        SizedBox(height: getProportionateScreenHeight(10),),
        StepThreeInputField(fieldTitle: "১৭। ব্যবসায়িক পণ্যের বকেয়া মূল্য", fieldController: field17Controller, fieldDescription: "(যা পাওয়া নিশ্চিত বা পাওয়ার আশা আছে)",),
        SizedBox(height: getProportionateScreenHeight(10),),
        StepThreeInputField(fieldTitle: "১৮। বাড়ি ভাড়া, গাড়ি ভাড়া ইত্যাদি বিবিধ উৎস থেকে অর্জিত আয়ের সঞ্চিত অর্থ", fieldController: field18Controller, fieldDescription: "	(যদি উপরের কোনো ঘরে না গিয়ে থাকে)", height1: 70, height2: 70),
        SizedBox(height: 5,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("মোট টাকা-পয়সা", style: TextStyle(color: AppColors.blackTextColor, fontSize: 14, fontWeight: FontWeight.w900, fontFamily: AppFonts.RalewayRegular),),
            Text("0", style: TextStyle(color: AppColors.blackTextColor, fontSize: 14, fontWeight: FontWeight.w900, fontFamily: AppFonts.RalewayRegular),),
          ],
        )
      ],
    );
  }
}
