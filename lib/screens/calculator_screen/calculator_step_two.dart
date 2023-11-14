import 'package:flutter/material.dart';

import '../../app_utils/app_colors.dart';
import '../../app_utils/appfonts.dart';




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
    return SizedBox(
      child: ListView(
        children: [
          Row(
            children: [
              SizedBox(width: 15,),
              Text("দ্বিতীয় ধাপ",style: TextStyle(color: AppColors.blackTextColor, fontSize: 18, fontWeight: FontWeight.w700, fontFamily: AppFonts.RalewayRegular),),
              SizedBox(width: 15,),
              SizedBox(
                height: 18,
                width: 24,
                child: Image.asset("assets/images/step.png", color: AppColors.blackTextColor,),
              ),
            ],
          ),
          SizedBox(height: 15,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text("ক. যে সকল সম্পদের উপর যাকাত ফরয", style: TextStyle(color: AppColors.blackTextColor, fontSize: 18, fontWeight: FontWeight.w700, fontFamily: AppFonts.RalewayRegular),),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text("ক (১). স্বর্ণ-রূপা", style: TextStyle(color: AppColors.blackTextColor, fontSize: 16, fontWeight: FontWeight.w700, fontFamily: AppFonts.RalewayRegular),),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text("*** পরিমাণ (ভরি, গ্রাম ইত্যাদি এককে), বর্তমান বিক্রয় মূল্য (একক অনুযায়ী) , মূল্যমান (টাকা)।", style: TextStyle(color: AppColors.appThemeColor, fontSize: 12, fontWeight: FontWeight.w600, fontFamily: AppFonts.RalewayRegular),),
          ),
          SizedBox(height: 10,),
          stepTwoTable()

        ],
      ),
    );
  }


  Column stepTwoTable(){
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.center,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: AppColors.appThemeColor,
                ),
                child: Text("সম্পদের নাম",textScaleFactor: 1.0, style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500, fontFamily: AppFonts.RalewayRegular),),
              ),
            ),
            SizedBox(width: 3,),
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.center,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: AppColors.appThemeColor,
                ),
                child: Text("পরিমাণ",textAlign: TextAlign.center , textScaleFactor: 1.0, style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500, fontFamily: AppFonts.RalewayRegular),),

              ),
            ),
            SizedBox(width: 3,),
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.center,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: AppColors.appThemeColor,
                ),
                child: Text("বর্তমান বিক্রয় মূল্য",textAlign: TextAlign.center , textScaleFactor: 1.0, style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500, fontFamily: AppFonts.RalewayRegular),),
              ),
            ),
            SizedBox(width: 3,),
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.all(3),
                alignment: Alignment.center,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: AppColors.appThemeColor,
                ),
                child: Text("মূল্যমান",textAlign: TextAlign.center , textScaleFactor: 1.0, style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500, fontFamily: AppFonts.RalewayRegular),),
              ),
            ),
          ],
        ),
        SizedBox(height: 20,),
        Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    height: 40,
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 1.0, color: AppColors.appThemeColor),
                    ),
                    child: Text("১। স্বর্ণ", textScaleFactor: 1.0, style: TextStyle(color: AppColors.blackTextColor, fontSize: 14, fontWeight: FontWeight.w500, fontFamily: AppFonts.RalewayRegular),),
                  ),
                ),
                SizedBox(width: 3,),
                Expanded(
                  flex: 1,
                  child: Container(
                      padding: EdgeInsets.only(right: 10),
                    alignment: Alignment.centerRight,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 1.0, color: AppColors.appThemeColor),
                    ),
                    child: inputField(goldQtyController)
                  ),
                ),
                SizedBox(width: 3,),
                Expanded(
                  flex: 1,
                  child: Container(
                      padding: EdgeInsets.only(right: 10),
                    alignment: Alignment.center,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 1.0, color: AppColors.appThemeColor),
                    ),
                    child:inputField(goldSalePriceController)
                  ),
                ),
                SizedBox(width: 3,),
                Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.centerRight,
                    padding: EdgeInsets.only(right: 10),
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 1.0, color: AppColors.appThemeColor),
                    ),
                    child: Text("0",textScaleFactor: 1.0, style: TextStyle(color: AppColors.blackTextColor, fontSize: 14, fontWeight: FontWeight.w500, fontFamily: AppFonts.RalewayRegular),),
                  ),
                ),
              ],
            ),
            SizedBox(height: 5,),
            Text("*** ব্যবহৃত অলংকার হোক বা ব্যবসার পণ্য, অলংকার, বার বা গিনি কয়েন যে আকারেই থাকুক সব প্রকারের রূপা হিসাবযোগ্য।",textScaleFactor: 1.0, style: TextStyle(color: AppColors.blackTextColor, fontSize: 12, fontWeight: FontWeight.w600, fontFamily: AppFonts.RalewayRegular)),
            SizedBox(height: 5,),
            Container(height: 1, color: AppColors.appThemeColor,),


          ],
        ),
        SizedBox(height: 20,),
        Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    height: 40,
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 1.0, color: AppColors.appThemeColor),
                    ),
                    child: Text("২। রূপা",textScaleFactor: 1.0, style: TextStyle(color: AppColors.blackTextColor, fontSize: 14, fontWeight: FontWeight.w500, fontFamily: AppFonts.RalewayRegular),),
                  ),
                ),
                SizedBox(width: 3,),

                Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.center,
                      padding: EdgeInsets.only(right: 10),
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 1.0, color: AppColors.appThemeColor),
                    ),
                    child: inputField(silverQtyController)
                  ),
                ),
                SizedBox(width: 3,),
                Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(right: 10),
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 1.0, color: AppColors.appThemeColor),
                    ),
                    child: inputField(silverSalePriceController),
                  ),
                ),
                SizedBox(width: 3,),
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.only(right: 10),
                    alignment: Alignment.centerRight,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 1.0, color: AppColors.appThemeColor),
                    ),
                    child: Text("0",textScaleFactor: 1.0, style: TextStyle(color: AppColors.blackTextColor, fontSize: 14, fontWeight: FontWeight.w500, fontFamily: AppFonts.RalewayRegular),),
                  ),
                ),
              ],
            ),
            SizedBox(height: 5,),
            Text("*** ব্যবহৃত অলংকার হোক বা ব্যবসার পণ্য, অলংকার, বার বা গিনি কয়েন যে আকারেই থাকুক সব প্রকারের রূপা হিসাবযোগ্য।",textScaleFactor: 1.0, style: TextStyle(color: AppColors.blackTextColor, fontSize: 12, fontWeight: FontWeight.w600, fontFamily: AppFonts.RalewayRegular)),
            SizedBox(height: 5,),
            Container(height: 1, color: AppColors.appThemeColor,),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Text("মোট স্বর্ণ-রূপা :", textScaleFactor: 1.0, style: TextStyle(color: AppColors.appThemeColor, fontSize: 16, fontWeight: FontWeight.w700, fontFamily: AppFonts.RalewayRegular),),
                 Text("0 টাকা", textScaleFactor: 1.0, textAlign: TextAlign.end, style: TextStyle(color: AppColors.appThemeColor, fontSize: 16, fontWeight: FontWeight.w700, fontFamily: AppFonts.RalewayRegular),),
              ],
            )
          ],
        )
      ],
    );
  }

  TextField inputField(TextEditingController controller){
    return  TextField(
        cursorColor: AppColors.blackTextColor,
        controller: controller,
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.done,
        textAlign: TextAlign.end,
        decoration: InputDecoration(
            isDense: true,
            hintText: "0",
            hintStyle: TextStyle(color: AppColors.blackTextColor, fontSize: 16, fontWeight: FontWeight.w500, fontFamily: AppFonts.RalewayRegular),
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none
        ),
    );
  }
}
