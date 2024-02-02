import 'package:flutter/material.dart';
import '../../app_utils/app_colors.dart';
import '../../app_utils/appfonts.dart';
import '../../app_utils/size_config.dart';
import '../../const_and_globals/globals.dart';
import '../../custom_widgets/custom_app_bar.dart';
import '../calculator_screen/calculator_step_four/widgets/step_four_table.dart';
import '../calculator_screen/calculator_step_three/widgets/step_three_table.dart';
import '../calculator_screen/calculator_step_two/widgets/step_two_table.dart';
import '../calculator_screen/calculator_step_five/widgets/step_five_table.dart';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:screenshot/screenshot.dart';



class ReportDetailsScreen extends StatefulWidget {
  const ReportDetailsScreen({Key? key}) : super(key: key);

  @override
  State<ReportDetailsScreen> createState() => _ReportDetailsScreenState();
}

class _ReportDetailsScreenState extends State<ReportDetailsScreen> {

  final ScreenshotController screenshotController = ScreenshotController();

  Future<void> _captureAndSaveAsPdf() async {
    // Capture the current screen as an image
    Uint8List? imageBytes = await screenshotController.capture();

    // Create a PDF document
    final pdf = pw.Document();

    // Convert the image to PDF and add it to the document
    if (imageBytes != null) {
      pdf.addPage(
        pw.Page(
          build: (context) {
            return pw.Image(
              pw.MemoryImage(imageBytes),
              fit: pw.BoxFit.contain,
            );
          },
        ),
      );

      // Save the PDF to a file or do something else with it
      // For example, you can use pdf.save() to save the PDF to a file
      // pdf.save().then((bytes) {
      //   // Handle the generated PDF bytes
      // });
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      body: Screenshot(
        controller: screenshotController,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: getProportionateScreenHeight(35)),
              CustomAppBar(icon: "assets/images/report.png", title: "বিস্তারিত রিপোর্ট"),
              SizedBox(height: getProportionateScreenHeight(35)),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("যাকাত প্রদানকারীর নাম : মো: ওয়াহিদ মুরাদ",style: TextStyle(color: AppColors.blackTextColor, fontSize: 18, fontWeight: FontWeight.w500, fontFamily: AppFonts.RalewayRegular)),
                    Text("তৈরির তারিখ : ০৮/০১/২০২৪",style: TextStyle(color: AppColors.blackTextColor, fontSize: 18, fontWeight: FontWeight.w500, fontFamily: AppFonts.RalewayRegular))
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15 , vertical: 15),
                padding: const EdgeInsets.symmetric(horizontal: 15 , vertical: 15),
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
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: Text("ক. যে সকল সম্পদের উপর যাকাত ফরয", style: TextStyle(color: AppColors.blackTextColor, fontSize: 18, fontWeight: FontWeight.w700, fontFamily: AppFonts.RalewayRegular),),
                          ),
                          SizedBox(height: getProportionateScreenHeight(10),),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: Text("ক (১). স্বর্ণ-রূপা", style: TextStyle(color: AppColors.blackTextColor, fontSize: 16, fontWeight: FontWeight.w700, fontFamily: AppFonts.RalewayRegular),),
                          ),
                          SizedBox(height: getProportionateScreenHeight(10),),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: Text("*** পরিমাণ (ভরি, গ্রাম ইত্যাদি এককে), বর্তমান বিক্রয় মূল্য (একক অনুযায়ী) , মূল্যমান (টাকা)।", style: TextStyle(color: AppColors.appThemeColor, fontSize: 12, fontWeight: FontWeight.w600, fontFamily: AppFonts.RalewayRegular),),
                          ),
                          const SizedBox(height: 10,),
                          StepTwoTable(),
                          const SizedBox(height: 5,),
                          const Row(
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
                          const SizedBox(height: 10,),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: Text("ক (২). টাকা-পয়সা", style: TextStyle(color: AppColors.blackTextColor, fontSize: 16, fontWeight: FontWeight.w700, fontFamily: AppFonts.RalewayRegular),),
                          ),
                          const SizedBox(height: 10,),
                          StepThreeTable(),
                        ],
                      ),
                    ),
                    SizedBox(height: getProportionateScreenHeight(25)),
                    SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: Text("ক (৩). ব্যবসায়িক সম্পদ", style: TextStyle(color: AppColors.blackTextColor, fontSize: 16, fontWeight: FontWeight.w700, fontFamily: AppFonts.RalewayRegular),),
                          ),
                          const SizedBox(height: 10,),
                          StepFourTable()
                        ],
                      ),
                    ),
                    SizedBox(height: getProportionateScreenHeight(25)),
                    SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: Text("খ. যাকাতের সম্পদ থেকে বিয়োগযোগ্য ঋণ", style: TextStyle(color: AppColors.blackTextColor, fontSize: 16, fontWeight: FontWeight.w700, fontFamily: AppFonts.RalewayRegular),),
                          ),
                          SizedBox(height: getProportionateScreenHeight(10),),
                          StepFiveTable()
                        ],
                      ),
                    ),

                  ],
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(20),),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("গ.যাকাতের চূড়ান্ত হিসাব", style: TextStyle(color: AppColors.blackTextColor, fontSize: 16, fontWeight: FontWeight.w700, fontFamily: AppFonts.RalewayRegular),),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: AppColors.appThemeColor, width: 2.0)
                      ),
                      child: Text('''প্রথম তালিকা অনুযায়ী আপনার মোট যাকাতযোগ্য সম্পদের পরিমাণ যা হয়েছে তা থেকে দ্বিতীয় তালিকা অনুযায়ী বিয়োগযোগ্য মোট ঋণের পরিমাণ বিয়োগ করা হয়েছে। এরপর অবশিষ্ট সম্পদের চল্লিশ ভাগের একভাগ তথা ২.৫% আপনার যাকাত হিসেবে ধার্য করা হয়েছে।''', textAlign: TextAlign.justify,style: TextStyle(color: AppColors.blackTextColor, fontSize: 14, fontWeight: FontWeight.w400, fontFamily: AppFonts.RalewayRegular),),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8 , vertical: 12),
                      decoration: BoxDecoration(
                          color: AppColors.appThemeColor.withOpacity(0.25),
                          borderRadius: BorderRadius.circular(8)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("মোট যাকাতযোগ্য সম্পদ (ক)",style: TextStyle(color: AppColors.blackTextColor, fontSize: 14, fontWeight: FontWeight.w700, fontFamily: AppFonts.RalewayRegular),),
                          // Text("0",style: TextStyle(color: AppColors.blackTextColor, fontSize: 14, fontWeight: FontWeight.w700, fontFamily: AppFonts.RalewayRegular),)
                          Container(
                              padding: EdgeInsets.only(right: 10),
                              alignment: Alignment.center,
                              height: 30,
                              width: 75,
                              child: TextField(
                                cursorColor: AppColors.blackTextColor,
                                controller: totalAssetForZakatController,
                                keyboardType: TextInputType.number,
                                textInputAction: TextInputAction.done,
                                textAlign: TextAlign.end,
                                readOnly: true,
                                decoration: InputDecoration(
                                    isDense: true,
                                    hintText: "0.0",
                                    hintStyle: TextStyle(
                                        color: AppColors.blackTextColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: AppFonts.RalewayRegular),
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none),
                              ))
                        ],
                      ),
                    ),
                    Container(

                      padding: EdgeInsets.symmetric(horizontal: 8 , vertical: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("যাকাত থেকে বিয়োগযোগ্য সম্পদ (খ)",style: TextStyle(color: AppColors.blackTextColor, fontSize: 14, fontWeight: FontWeight.w700, fontFamily: AppFonts.RalewayRegular),),
                          // Text("0",style: TextStyle(color: AppColors.blackTextColor, fontSize: 14, fontWeight: FontWeight.w700, fontFamily: AppFonts.RalewayRegular),)
                          Container(
                              padding: EdgeInsets.only(right: 10),
                              alignment: Alignment.center,
                              height: 30,
                              width: 75,
                              child: TextField(
                                cursorColor: AppColors.blackTextColor,
                                controller: totalDeductibleAssetFromZakatController,
                                keyboardType: TextInputType.number,
                                textInputAction: TextInputAction.done,
                                textAlign: TextAlign.end,
                                readOnly: true,
                                decoration: InputDecoration(
                                    isDense: true,
                                    hintText: "0.0",
                                    hintStyle: TextStyle(
                                        color: AppColors.blackTextColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: AppFonts.RalewayRegular),
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none),
                              ))
                        ],
                      ),
                    ),
                    Container(

                      padding: EdgeInsets.symmetric(horizontal: 8 , vertical: 12),
                      decoration: BoxDecoration(
                          color: AppColors.appThemeColor.withOpacity(0.25),
                          borderRadius: BorderRadius.circular(8)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("= বিয়োগফল (নেট যাকাতযোগ্য সম্পদ)",style: TextStyle(color: AppColors.blackTextColor, fontSize: 14, fontWeight: FontWeight.w700, fontFamily: AppFonts.RalewayRegular),),
                          // Text("0",style: TextStyle(color: AppColors.blackTextColor, fontSize: 14, fontWeight: FontWeight.w700, fontFamily: AppFonts.RalewayRegular),)
                          Container(
                              padding: EdgeInsets.only(right: 10),
                              alignment: Alignment.center,
                              height: 30,
                              width: 75,
                              child: TextField(
                                cursorColor: AppColors.blackTextColor,
                                controller: netAssetForZakatController,
                                keyboardType: TextInputType.number,
                                textInputAction: TextInputAction.done,
                                textAlign: TextAlign.end,
                                readOnly: true,
                                decoration: InputDecoration(
                                    isDense: true,
                                    hintText: "0.0",
                                    hintStyle: TextStyle(
                                        color: AppColors.blackTextColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: AppFonts.RalewayRegular),
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none),
                              ))
                        ],
                      ),
                    ),
                    Container(

                      padding: EdgeInsets.symmetric(horizontal: 8 , vertical: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("বিয়োগফল X ২.৫%",style: TextStyle(color: AppColors.blackTextColor, fontSize: 14, fontWeight: FontWeight.w700, fontFamily: AppFonts.RalewayRegular),),
                          Text("2.5%",style: TextStyle(color: AppColors.blackTextColor, fontSize: 14, fontWeight: FontWeight.w700, fontFamily: AppFonts.RalewayRegular),)
                        ],
                      ),
                    ),
                    Container(

                      padding: EdgeInsets.symmetric(horizontal: 8 , vertical: 12),
                      decoration: BoxDecoration(
                          color: AppColors.appThemeColor.withOpacity(0.25),
                          borderRadius: BorderRadius.circular(8)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("মোট যাকাত",style: TextStyle(color: AppColors.blackTextColor, fontSize: 14, fontWeight: FontWeight.w700, fontFamily: AppFonts.RalewayRegular),),
                          // Text("0",style: TextStyle(color: AppColors.blackTextColor, fontSize: 14, fontWeight: FontWeight.w700, fontFamily: AppFonts.RalewayRegular),)
                          Container(
                              padding: EdgeInsets.only(right: 10),
                              alignment: Alignment.center,
                              height: 30,
                              width: 75,
                              child: TextField(
                                cursorColor: AppColors.blackTextColor,
                                controller: netZakatController,
                                keyboardType: TextInputType.number,
                                textInputAction: TextInputAction.done,
                                textAlign: TextAlign.end,
                                readOnly: true,
                                decoration: InputDecoration(
                                    isDense: true,
                                    hintText: "0.0",
                                    hintStyle: TextStyle(
                                        color: AppColors.blackTextColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: AppFonts.RalewayRegular),
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none),
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(15)),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
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
                        onTap: (){
                          _captureAndSaveAsPdf;
                          print("Button Clicked");
                        },
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
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(15)),
            ],
          ),
        ),
      ),
    );
  }
}
