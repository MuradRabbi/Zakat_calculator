import 'package:flutter/material.dart';

import '../../app_utils/app_colors.dart';
import '../../app_utils/appfonts.dart';
import '../../app_utils/size_config.dart';
import '../../custom_widgets/calculator_steps_title.dart';
import '../../custom_widgets/custom_app_bar.dart';
import '../calculator_screen/calculator_step_four/widgets/step_four_table.dart';
import '../calculator_screen/calculator_step_three/widgets/step_three_table.dart';
import '../calculator_screen/calculator_step_two/widgets/step_two_table.dart';
import '../calculator_screen/calculator_strp_five/widgets/step_five_table.dart';



class ReportDetailsScreen extends StatefulWidget {
  const ReportDetailsScreen({Key? key}) : super(key: key);

  @override
  State<ReportDetailsScreen> createState() => _ReportDetailsScreenState();
}

class _ReportDetailsScreenState extends State<ReportDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      body: SingleChildScrollView(
        child: Container(
            child: Column(
              children: [
                SizedBox(height: getProportionateScreenHeight(35)),
                CustomAppBar(icon: "assets/images/report.png", title: "বিস্তারিত রিপোর্ট"),
                SizedBox(height: getProportionateScreenHeight(35)),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("যাকাত প্রদানকারীর নাম : মো: ওয়াহিদ মুরাদ",style: const TextStyle(color: AppColors.blackTextColor, fontSize: 18, fontWeight: FontWeight.w500, fontFamily: AppFonts.RalewayRegular)),
                      Text("তৈরির তারিখ : ০৮/০১/২০২৪",style: const TextStyle(color: AppColors.blackTextColor, fontSize: 18, fontWeight: FontWeight.w500, fontFamily: AppFonts.RalewayRegular))
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15 , vertical: 15),
                  padding: EdgeInsets.symmetric(horizontal: 15 , vertical: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(width: 1.5, color: AppColors.appThemeColor)
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
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
                      ),
                      SizedBox(height: getProportionateScreenHeight(25)),
                      SizedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10,),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              child: Text("ক (২). টাকা-পয়সা", style: TextStyle(color: AppColors.blackTextColor, fontSize: 16, fontWeight: FontWeight.w700, fontFamily: AppFonts.RalewayRegular),),
                            ),
                            SizedBox(height: 10,),
                            StepThreeTable(),
                          ],
                        ),
                      ),
                      SizedBox(height: getProportionateScreenHeight(25)),
                      SizedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              child: Text("ক (৩). ব্যবসায়িক সম্পদ", style: TextStyle(color: AppColors.blackTextColor, fontSize: 16, fontWeight: FontWeight.w700, fontFamily: AppFonts.RalewayRegular),),
                            ),
                            SizedBox(height: 10,),
                            StepFourTable()
                          ],
                        ),
                      ),
                      SizedBox(height: getProportionateScreenHeight(25)),
                      SizedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              child: Text("খ. যাকাতের সম্পদ থেকে বিয়োগযোগ্য ঋণ", style: TextStyle(color: AppColors.blackTextColor, fontSize: 16, fontWeight: FontWeight.w700, fontFamily: AppFonts.RalewayRegular),),
                            ),
                            SizedBox(height: getProportionateScreenHeight(10),),
                            StepFiveTable()
                          ],
                        ),
                      ),
                      SizedBox(height: getProportionateScreenHeight(15)),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: GestureDetector(
                              onTap: (){},
                              child: Container(
                                alignment: Alignment.center,
                                height: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: AppColors.appThemeColor
                                ),
                                child: Text("এডিট করুন", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 12, fontFamily: AppFonts.RalewayRegular),),
                              ),
                            ),
                          ),
                          SizedBox(width: getProportionateScreenWidth(8),),
                          Expanded(
                            flex: 1,
                            child: GestureDetector(
                              onTap: (){},
                              child: Container(
                                alignment: Alignment.center,
                                height: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: AppColors.appThemeColor
                                ),
                                child: Text("পিডএফ ডাউনলোড \nকরুন", textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 12, fontFamily: AppFonts.RalewayRegular),),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            )
        ),
      ),
    );
  }
}
