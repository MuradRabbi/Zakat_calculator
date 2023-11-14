import 'package:flutter/material.dart';

import '../../app_utils/app_colors.dart';
import '../../app_utils/appfonts.dart';




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
          Row(
            children: [
              SizedBox(width: 15,),
              Text("চতুর্থ ধাপ",style: TextStyle(color: AppColors.blackTextColor, fontSize: 18, fontWeight: FontWeight.w700, fontFamily: AppFonts.RalewayRegular),),
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
            child: Text("ক (৩). ব্যবসায়িক সম্পদ", style: TextStyle(color: AppColors.blackTextColor, fontSize: 16, fontWeight: FontWeight.w700, fontFamily: AppFonts.RalewayRegular),),
          ),
          SizedBox(height: 10,),
          stepFourTable()
        ],
      ),
    );
  }

  Column stepFourTable(){
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
              flex: 2,
              child: Container(
                alignment: Alignment.center,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: AppColors.appThemeColor,
                ),
                child: Text("বিবরণ",textAlign: TextAlign.center , textScaleFactor: 1.0, style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500, fontFamily: AppFonts.RalewayRegular),),

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
                child: Text("পরিমাণ (টাকা)",textAlign: TextAlign.center , textScaleFactor: 1.0, style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500, fontFamily: AppFonts.RalewayRegular),),
              ),
            ),
          ],
        ),
        SizedBox(height: 20,),
        // field1
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 1.0, color: AppColors.appThemeColor),
                    ),
                    child: Text("১।ব্যবসার উদ্দেশ্যে ক্রয়কৃত জমি, প্লট ", textScaleFactor: 1.0, style: TextStyle(color: AppColors.blackTextColor, fontSize: 14, fontWeight: FontWeight.w500, fontFamily: AppFonts.RalewayRegular),),
                  ),
                ),
                SizedBox(width: 3,),
                Expanded(
                  flex: 2,
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(right: 10),
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 1.0, color: AppColors.appThemeColor),
                    ),
                    child: Text("বর্তমান বিক্রয় মূল্য", textScaleFactor: 1.0, style: TextStyle(color: AppColors.blackTextColor, fontSize: 14, fontWeight: FontWeight.w500, fontFamily: AppFonts.RalewayRegular),),

                  ),
                ),
                SizedBox(width: 3,),
                Expanded(
                  flex: 1,
                  child: Container(
                      padding: EdgeInsets.only(right: 10),
                      alignment: Alignment.centerRight,
                      // height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(width: 1.0, color: AppColors.appThemeColor),
                      ),
                      child: inputField(field1Controller)
                  ),
                ),

              ],
            ),
            SizedBox(height: 5,),
            Text("*** যা কেনা হয়েছে বিক্রির নিয়তে।",textScaleFactor: 1.0, style: TextStyle(color: AppColors.blackTextColor, fontSize: 12, fontWeight: FontWeight.w600, fontFamily: AppFonts.RalewayRegular)),
            SizedBox(height: 5,),
            Container(height: 1, color: AppColors.appThemeColor,),


          ],
        ),
        SizedBox(height: 20,),
        //field2
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 1.0, color: AppColors.appThemeColor),
                    ),
                    child: Text("২।ব্যবসার উদ্দেশ্যে ক্রয়কৃত ফ্ল্যাট, বাড়ি", textScaleFactor: 1.0, style: TextStyle(color: AppColors.blackTextColor, fontSize: 14, fontWeight: FontWeight.w500, fontFamily: AppFonts.RalewayRegular),),
                  ),
                ),
                SizedBox(width: 3,),
                Expanded(
                  flex: 2,
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(right: 10),
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 1.0, color: AppColors.appThemeColor),
                    ),
                    child: Text("বর্তমান বিক্রয় মূল্য", textScaleFactor: 1.0, style: TextStyle(color: AppColors.blackTextColor, fontSize: 14, fontWeight: FontWeight.w500, fontFamily: AppFonts.RalewayRegular),),

                  ),
                ),
                SizedBox(width: 3,),
                Expanded(
                  flex: 1,
                  child: Container(
                      padding: EdgeInsets.only(right: 10),
                      alignment: Alignment.centerRight,
                      // height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(width: 1.0, color: AppColors.appThemeColor),
                      ),
                      child: inputField(field2Controller)
                  ),
                ),

              ],
            ),
            SizedBox(height: 5,),
            Text("*** যা কেনা হয়েছে বিক্রির নিয়তে, ভাড়ায় প্রদত্ত ফ্ল্যাট বা বাড়ি নয়। ",textScaleFactor: 1.0, style: TextStyle(color: AppColors.blackTextColor, fontSize: 12, fontWeight: FontWeight.w600, fontFamily: AppFonts.RalewayRegular)),
            SizedBox(height: 5,),
            Container(height: 1, color: AppColors.appThemeColor,),


          ],
        ),
        SizedBox(height: 20,),
        // field3
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 1.0, color: AppColors.appThemeColor),
                    ),
                    child: Text("৩। ব্যবসার গাড়ি", textScaleFactor: 1.0, style: TextStyle(color: AppColors.blackTextColor, fontSize: 14, fontWeight: FontWeight.w500, fontFamily: AppFonts.RalewayRegular),),
                  ),
                ),
                SizedBox(width: 3,),
                Expanded(
                  flex: 2,
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(right: 10),
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 1.0, color: AppColors.appThemeColor),
                    ),
                    child: Text("বর্তমান বিক্রয় মূল্য", textScaleFactor: 1.0, style: TextStyle(color: AppColors.blackTextColor, fontSize: 14, fontWeight: FontWeight.w500, fontFamily: AppFonts.RalewayRegular),),

                  ),
                ),
                SizedBox(width: 3,),
                Expanded(
                  flex: 1,
                  child: Container(
                      padding: EdgeInsets.only(right: 10),
                      alignment: Alignment.centerRight,
                      // height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(width: 1.0, color: AppColors.appThemeColor),
                      ),
                      child: inputField(field3Controller)
                  ),
                ),

              ],
            ),
            SizedBox(height: 5,),
            Text("*** যা কেনা হয়েছে বিক্রির নিয়তে, ভাড়ায় চালিত গাড়ি নয়। ",textScaleFactor: 1.0, style: TextStyle(color: AppColors.blackTextColor, fontSize: 12, fontWeight: FontWeight.w600, fontFamily: AppFonts.RalewayRegular)),
            SizedBox(height: 5,),
            Container(height: 1, color: AppColors.appThemeColor,),


          ],
        ),
        SizedBox(height: 20,),
        //field4
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 1.0, color: AppColors.appThemeColor),
                    ),
                    child: Text("৩। কোম্পানির বিক্রয়যোগ্য ব্যবসায়িক পণ্য", textScaleFactor: 1.0, style: TextStyle(color: AppColors.blackTextColor, fontSize: 14, fontWeight: FontWeight.w500, fontFamily: AppFonts.RalewayRegular),),
                  ),
                ),
                SizedBox(width: 3,),
                Expanded(
                  flex: 2,
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(right: 10),
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 1.0, color: AppColors.appThemeColor),
                    ),
                    child: Text("বর্তমান বিক্রয় মূল্য", textScaleFactor: 1.0, style: TextStyle(color: AppColors.blackTextColor, fontSize: 14, fontWeight: FontWeight.w500, fontFamily: AppFonts.RalewayRegular),),

                  ),
                ),
                SizedBox(width: 3,),
                Expanded(
                  flex: 1,
                  child: Container(
                      padding: EdgeInsets.only(right: 10),
                      alignment: Alignment.centerRight,
                      // height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(width: 1.0, color: AppColors.appThemeColor),
                      ),
                      child: inputField(field4Controller)
                  ),
                ),

              ],
            ),
            SizedBox(height: 5,),
            Container(height: 1, color: AppColors.appThemeColor,),


          ],
        ),
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
