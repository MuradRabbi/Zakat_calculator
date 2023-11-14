import 'package:flutter/material.dart';

import '../app_utils/app_colors.dart';
import '../app_utils/appfonts.dart';




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
        children: [
          Row(
            children: [
              SizedBox(width: 15,),
              Text("তৃতীয় ধাপ",style: TextStyle(color: AppColors.blackTextColor, fontSize: 18, fontWeight: FontWeight.w700, fontFamily: AppFonts.RalewayRegular),),
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
            child: Text("ক (২). টাকা-পয়সা", style: TextStyle(color: AppColors.blackTextColor, fontSize: 16, fontWeight: FontWeight.w700, fontFamily: AppFonts.RalewayRegular),),
          ),
          SizedBox(height: 10,),
          stepThreeTable()

        ],
      ),
    );
  }

  Column stepThreeTable(){
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
        //field 1
        Column(
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
                    child: Text("১। নগদ টাকা", textScaleFactor: 1.0, style: TextStyle(color: AppColors.blackTextColor, fontSize: 14, fontWeight: FontWeight.w500, fontFamily: AppFonts.RalewayRegular),),
                  ),
                ),
                SizedBox(width: 3,),
                Expanded(
                  flex: 2,
                  child: Container(),
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
            Container(height: 1, color: AppColors.appThemeColor,),


          ],
        ),
        SizedBox(height: 20,),
        // field 2
        Column(
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
                    child: Text("২। কারো কাছে গচ্ছিত আমানত", textScaleFactor: 1.0, style: TextStyle(color: AppColors.blackTextColor, fontSize: 14, fontWeight: FontWeight.w500, fontFamily: AppFonts.RalewayRegular),),
                  ),
                ),
                SizedBox(width: 3,),
                Expanded(
                  flex: 2,
                  child: Container(),
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
            Container(height: 1, color: AppColors.appThemeColor,),


          ],
        ),
        SizedBox(height: 20,),
        // field 3
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
                    child: Text("৩। অন্যের কাছে পাওনা টাকা", textScaleFactor: 1.0, style: TextStyle(color: AppColors.blackTextColor, fontSize: 14, fontWeight: FontWeight.w500, fontFamily: AppFonts.RalewayRegular),),
                  ),
                ),
                SizedBox(width: 3,),
                Expanded(
                  flex: 2,
                  child: Container(),
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
            Text("*** যা পাওয়া নিশ্চিত বা পাওয়ার আশা আছে।",textScaleFactor: 1.0, style: TextStyle(color: AppColors.blackTextColor, fontSize: 12, fontWeight: FontWeight.w600, fontFamily: AppFonts.RalewayRegular)),
            SizedBox(height: 5,),
            Container(height: 1, color: AppColors.appThemeColor,),


          ],
        ),
        SizedBox(height: 20,),
        // field 4
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
                    child: Text("৪। সিকিউরিটি মানি", textScaleFactor: 1.0, style: TextStyle(color: AppColors.blackTextColor, fontSize: 14, fontWeight: FontWeight.w500, fontFamily: AppFonts.RalewayRegular),),
                  ),
                ),
                SizedBox(width: 3,),
                Expanded(
                  flex: 2,
                  child: Container(),
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
            Text("*** যা সম্পূর্ণ ফেরৎযোগ্য; অ্যাডভান্স হিসেবে অফেরৎযোগ্য অগ্রিম ভাড়া নয়।",textScaleFactor: 1.0, style: TextStyle(color: AppColors.blackTextColor, fontSize: 12, fontWeight: FontWeight.w600, fontFamily: AppFonts.RalewayRegular)),
            SizedBox(height: 5,),
            Container(height: 1, color: AppColors.appThemeColor,),


          ],
        ),
        SizedBox(height: 20,),
        // field 5
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
                    child: Text("৫। বৈদেশিক মুদ্রা ", textScaleFactor: 1.0, style: TextStyle(color: AppColors.blackTextColor, fontSize: 14, fontWeight: FontWeight.w500, fontFamily: AppFonts.RalewayRegular),),
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
                    child: Text("বর্তমান এক্সচেঞ্জ রেট", textScaleFactor: 1.0, style: TextStyle(color: AppColors.blackTextColor, fontSize: 14, fontWeight: FontWeight.w500, fontFamily: AppFonts.RalewayRegular),),

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
                      child: inputField(field5Controller)
                  ),
                ),

              ],
            ),
            SizedBox(height: 5,),
            Container(height: 1, color: AppColors.appThemeColor,),


          ],
        ),
        SizedBox(height: 20,),
        // field 6
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
                    child: Text("৬। ব্যাংক একাউন্টে জমাকৃত অর্থ ", textScaleFactor: 1.0, style: TextStyle(color: AppColors.blackTextColor, fontSize: 14, fontWeight: FontWeight.w500, fontFamily: AppFonts.RalewayRegular),),
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
                    child: Text("নিজের জমাকৃত ব্যালেন্স", textScaleFactor: 1.0, style: TextStyle(color: AppColors.blackTextColor, fontSize: 14, fontWeight: FontWeight.w500, fontFamily: AppFonts.RalewayRegular),),

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
                      child: inputField(field6Controller)
                  ),
                ),

              ],
            ),
            SizedBox(height: 5,),
            Text("*** কারেন্ট ও সেভিংস অ্যাকাউন্ট, ফিক্সড ডিপোজিট, ডিপিএস, এফডিআর ইত্যাদি যাবতীয় অ্যাকাউন্টে জমা অর্থ। অতিরিক্ত ইন্টারেস্ট পুরোটাই সদকা করা জরুরী",textScaleFactor: 1.0, style: TextStyle(color: AppColors.blackTextColor, fontSize: 12, fontWeight: FontWeight.w600, fontFamily: AppFonts.RalewayRegular)),
            SizedBox(height: 5,),
            Container(height: 1, color: AppColors.appThemeColor,),


          ],
        ),
        SizedBox(height: 20,),
        // field 7
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
                    child: Text("৭। বিশেষ জমা অ্যাকাউন্ট  ", textScaleFactor: 1.0, style: TextStyle(color: AppColors.blackTextColor, fontSize: 14, fontWeight: FontWeight.w500, fontFamily: AppFonts.RalewayRegular),),
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
                    child: Text("নিজের জমাকৃত ব্যালেন্স", textScaleFactor: 1.0, style: TextStyle(color: AppColors.blackTextColor, fontSize: 14, fontWeight: FontWeight.w500, fontFamily: AppFonts.RalewayRegular),),

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
                      child: inputField(field7Controller)
                  ),
                ),

              ],
            ),
            SizedBox(height: 5,),
            Text("*** হজ, বিয়ে ইত্যাদির জন্য",textScaleFactor: 1.0, style: TextStyle(color: AppColors.blackTextColor, fontSize: 12, fontWeight: FontWeight.w600, fontFamily: AppFonts.RalewayRegular)),
            SizedBox(height: 5,),
            Container(height: 1, color: AppColors.appThemeColor,),


          ],
        ),
        SizedBox(height: 20,),
        // field 8
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
                    child: Text("৮। স্যালারি অ্যাকাউন্ট  ", textScaleFactor: 1.0, style: TextStyle(color: AppColors.blackTextColor, fontSize: 14, fontWeight: FontWeight.w500, fontFamily: AppFonts.RalewayRegular),),
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
                    child: Text("সাধারণ মাসিক খরচের অতিরিক্ত জমা থাকলে সে টাকা", textScaleFactor: 1.0, style: TextStyle(color: AppColors.blackTextColor, fontSize: 14, fontWeight: FontWeight.w500, fontFamily: AppFonts.RalewayRegular),),

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
                      child: inputField(field8Controller)
                  ),
                ),

              ],
            ),
            SizedBox(height: 5,),
            Container(height: 1, color: AppColors.appThemeColor,),


          ],
        ),
        SizedBox(height: 20,),
        // field 9
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
                    child: Text("৯। ব্যাংক গ্যারান্টি মানি   ", textScaleFactor: 1.0, style: TextStyle(color: AppColors.blackTextColor, fontSize: 14, fontWeight: FontWeight.w500, fontFamily: AppFonts.RalewayRegular),),
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
                    child: Text("নিজের জমাকৃত ব্যালেন্স", textScaleFactor: 1.0, style: TextStyle(color: AppColors.blackTextColor, fontSize: 14, fontWeight: FontWeight.w500, fontFamily: AppFonts.RalewayRegular),),

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
                      child: inputField(field9Controller)
                  ),
                ),

              ],
            ),
            SizedBox(height: 5,),
            Text("*** অতিরিক্ত ইন্টারেস্ট পুরোটাই সদকা করা জরুরী",textScaleFactor: 1.0, style: TextStyle(color: AppColors.blackTextColor, fontSize: 12, fontWeight: FontWeight.w600, fontFamily: AppFonts.RalewayRegular)),
            SizedBox(height: 5,),
            Container(height: 1, color: AppColors.appThemeColor,),


          ],
        ),
        SizedBox(height: 20,),
        // field 10
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
                    child: Text("৯। ব্যাংক গ্যারান্টি মানি   ", textScaleFactor: 1.0, style: TextStyle(color: AppColors.blackTextColor, fontSize: 14, fontWeight: FontWeight.w500, fontFamily: AppFonts.RalewayRegular),),
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
                    child: Text("নিজের জমাকৃত প্রিমিয়াম ", textScaleFactor: 1.0, style: TextStyle(color: AppColors.blackTextColor, fontSize: 14, fontWeight: FontWeight.w500, fontFamily: AppFonts.RalewayRegular),),

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
                      child: inputField(field10Controller)
                  ),
                ),

              ],
            ),
            SizedBox(height: 5,),
            Text("*** অতিরিক্ত পুরোটাই সদকা করা জরুরী",textScaleFactor: 1.0, style: TextStyle(color: AppColors.blackTextColor, fontSize: 12, fontWeight: FontWeight.w600, fontFamily: AppFonts.RalewayRegular)),
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
