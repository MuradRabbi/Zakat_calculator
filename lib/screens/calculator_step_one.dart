import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../app_utils/app_colors.dart';
import '../app_utils/appfonts.dart';




class CalculatorStepOne extends StatefulWidget {
  const CalculatorStepOne({Key? key}) : super(key: key);

  @override
  State<CalculatorStepOne> createState() => _CalculatorStepOneState();
}

class _CalculatorStepOneState extends State<CalculatorStepOne> {

  TextEditingController nameController = TextEditingController();
  DateTime selectedDate = DateTime.now();
  String selectedDateString = "";
  String dateTextHolder = "তারিখ পছন্দ করুন";


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          SizedBox(height: 25,),
          Row(
            children: [
              SizedBox(width: 15,),
              Text("প্রথম ধাপ",style: TextStyle(color: AppColors.blackTextColor, fontSize: 18, fontWeight: FontWeight.w700, fontFamily: AppFonts.RalewayRegular),),
              SizedBox(width: 15,),
              SizedBox(
                height: 18,
                width: 24,
                child: Image.asset("assets/images/step.png", color: AppColors.blackTextColor,),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Column(
              children: [
                Text("আপনার যাকাতের হিসাব বের করার জন্য ধারাবাহিকভাবে নিন্মোল্লেখিত সংশ্লিষ্ট ঘরগুলো যত্নের সাথে পূরণ করুন। মনে রাখবেন - ",
                  style: TextStyle(color: AppColors.blackTextColor, fontSize: 14, fontFamily: AppFonts.RalewayRegular, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      color: AppColors.appThemeColor,
                      padding: EdgeInsets.all(2.0),
                      height: 16,
                      width: 16,
                      child: Image.asset("assets/images/bullet-point.png",color: Colors.white,),
                    ),
                    SizedBox(width: 10,),
                    Flexible(
                      child: Text("সকল সংখ্যা শুধুমাত্র ইংরেজি ডিজিটে, পজিটিভ নাম্বার ইনপুট দিতে হবে।",
                        style: TextStyle(color: AppColors.blackTextColor, fontSize: 14, fontFamily: AppFonts.RalewayRegular, fontWeight: FontWeight.w500),
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      color: AppColors.appThemeColor,
                      padding: EdgeInsets.all(2.0),
                      height: 16,
                      width: 16,
                      child: Image.asset("assets/images/bullet-point.png",color: Colors.white,),
                    ),
                    SizedBox(width: 10,),
                    Flexible(
                      child: Text("ইনপুট দেওয়ার সময় কমা (,) বা অন্য কোন ফরম্যাটিং ব্যাবহার করবেন না।",
                        style: TextStyle(color: AppColors.blackTextColor, fontSize: 14, fontFamily: AppFonts.RalewayRegular, fontWeight: FontWeight.w500),
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      color: AppColors.appThemeColor,
                      padding: EdgeInsets.all(2.0),
                      height: 16,
                      width: 16,
                      child: Image.asset("assets/images/bullet-point.png",color: Colors.white,),
                    ),
                    SizedBox(width: 10,),
                    Flexible(
                      child: Text("কোন সেকশন বুঝতে অসুবিধা হলে নির্ভরযোগ্য আলেমের সাথে আলোচনা করে নিন।",
                        style: TextStyle(color: AppColors.blackTextColor, fontSize: 14, fontFamily: AppFonts.RalewayRegular, fontWeight: FontWeight.w500),
                      ),
                    ),

                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 30,),
          nameInputField(),
          SizedBox(height: 30,),
          chooseDateField(),
        ],
      ),
    );
  }

  Container nameInputField(){
    return  Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      padding: EdgeInsets.only(top: 4, left: 12),
      height: 45,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(8),
          border: Border.all( width: 2.0 , color: AppColors.appThemeColor)
      ),
      child: TextField(
        cursorColor: AppColors.blackTextColor,
        controller: nameController,
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
            isDense: true,
            hintText: "আপনার নাম লিখুন",
            hintStyle: TextStyle(color: AppColors.blackTextColor, fontSize: 16, fontWeight: FontWeight.w500, fontFamily: AppFonts.RalewayRegular),
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none

        ),
      ),
    );
  }

  Widget chooseDateField(){
    return  InkWell(
      onTap: (){
        _selectDate(context);
      },
      child: Container(
        padding: const EdgeInsets.only(left: 12),
        margin: EdgeInsets.symmetric(horizontal: 15),
        alignment: Alignment.centerLeft,
        height: 45,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.transparent, borderRadius: BorderRadius.circular(8), border: Border.all(width: 2.0, color: AppColors.appThemeColor)),
        child: Text(dateTextHolder,
          textScaleFactor: 1.0,
          style: const TextStyle(color: AppColors.blackTextColor, fontSize: 16, fontWeight: FontWeight.w500, fontFamily: AppFonts.RalewayRegular),),
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(context: context, initialDate: selectedDate, firstDate: DateTime(1970), lastDate: DateTime.now());
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        selectedDateString = "${selectedDate.toLocal()}".split(' ')[0];

        var formatter = DateFormat('dd-MM-yyyy');
        String formattedDate = formatter.format(picked);

        dateTextHolder = formattedDate;
      });
    }
  }
}
