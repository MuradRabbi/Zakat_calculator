import 'package:flutter/material.dart';
import 'package:zakat_calculator/app_utils/size_config.dart';
import 'package:zakat_calculator/screens/calculator_screen/calculator_step_two_widgets/step_two_input_field.dart';

import '../../../app_utils/app_colors.dart';
import '../../../app_utils/appfonts.dart';




class StepTwoTable extends StatelessWidget {
  StepTwoTable({super.key});

  TextEditingController goldQtyController = TextEditingController();
  TextEditingController goldPresentPriceController = TextEditingController();
  TextEditingController goldTotalPriceController = TextEditingController();
  TextEditingController silverQtyController = TextEditingController();
  TextEditingController silverPresentPriceController = TextEditingController();
  TextEditingController silverTotalPriceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        tableHead() ,
        SizedBox(height: 20,),
        StepTwoInputField(qtyController: goldQtyController, presentPriceController: goldPresentPriceController, totalPriceController: goldTotalPriceController ,assetName: "১। স্বর্ণ", fieldDescription: "*** ব্যবহৃত অলংকার হোক বা ব্যবসার পণ্য, অলংকার, বার বা গিনি কয়েন যে আকারেই থাকুক সব প্রকারের সোনা হিসাবযোগ্য।",),
        SizedBox(height: 20,),
        StepTwoInputField(qtyController: silverQtyController, presentPriceController: silverPresentPriceController, totalPriceController: silverTotalPriceController ,assetName: "২। রূপা", fieldDescription: "*** ব্যবহৃত অলংকার হোক বা ব্যবসার পণ্য, অলংকার, বার বা গিনি কয়েন যে আকারেই থাকুক সব প্রকারের রূপা হিসাবযোগ্য।",),

      ],
    );
  }


  Widget tableHead(){
    return  Row(
      children: [
        tableHeadItem( 2 , "সম্পদের নাম"),
        SizedBox(width: getProportionateScreenWidth(3),),
        tableHeadItem( 1 , "পরিমাণ"),
        SizedBox(width: getProportionateScreenWidth(3),),
        tableHeadItem( 1 , "বর্তমান বিক্রয় মূল্য"),
        SizedBox(width: getProportionateScreenWidth(3),),
        tableHeadItem( 1, "মূল্যমান")
      ],
    );
  }


  Widget tableHeadItem(int flex , String title){
    return  Expanded(
      flex: flex,
      child: Container(
        padding: EdgeInsets.all(3),
        alignment: Alignment.center,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: AppColors.appThemeColor,
        ),
        child: Text( title ,textAlign: TextAlign.center , textScaleFactor: 1.0, style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w500, fontFamily: AppFonts.RalewayRegular),),
      ),
    );
  }
}
