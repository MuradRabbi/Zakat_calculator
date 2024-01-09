import 'package:flutter/material.dart';
import 'package:zakat_calculator/screens/report_details_screen/report_details_screen.dart';

import '../../app_utils/app_colors.dart';
import '../../app_utils/appfonts.dart';
import '../../app_utils/size_config.dart';
import '../../custom_widgets/custom_app_bar.dart';



class ReportScreen extends StatefulWidget {
  const ReportScreen({super.key});

  @override
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      body: Container(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(35)),
            CustomAppBar(icon: "assets/images/report.png", title: "রিপোর্ট"),
            SizedBox(height: getProportionateScreenHeight(10)),
            Expanded(child: allReportItem())
          ],
        ),
      ),
    );
  }

  Widget allReportItem(){
    return  Container(
        child: ListView.builder(
          padding: EdgeInsets.only(bottom: getProportionateScreenHeight(20)),
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          itemCount: 7,
          scrollDirection: Axis.vertical,
          itemBuilder: (BuildContext context, int index) {
            return reportItem();
          },
        ));
  }

  Widget reportItem(){
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 7.5),
          padding: EdgeInsets.all(15),
          height: 158,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color:AppColors.appThemeColor.withOpacity(0.25)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("যাকাত প্রদানকারীর নাম :\nমো: ওয়াহিদ মুরাদ",style: const TextStyle(color: AppColors.blackTextColor, fontSize: 16, fontWeight: FontWeight.w600, fontFamily: AppFonts.RalewayRegular)),
              SizedBox(height: getProportionateScreenHeight(2),),
              Text("তৈরির তারিখ : ০৮/০১/২০২৪",style: const TextStyle(color: AppColors.blackTextColor, fontSize: 14, fontWeight: FontWeight.w500, fontFamily: AppFonts.RalewayRegular)),
              SizedBox(height: getProportionateScreenHeight(2),),
              Text("মোট যাকাতযোগ্য সম্পদ (ক) : ১৫০০০০",style: const TextStyle(color: AppColors.blackTextColor, fontSize: 14, fontWeight: FontWeight.w500, fontFamily: AppFonts.RalewayRegular)),
              SizedBox(height: getProportionateScreenHeight(2),),
              Text("যাকাত থেকে বিয়োগযোগ্য সম্পদ (খ) : ১০০০০০",style: const TextStyle(color: AppColors.blackTextColor, fontSize: 14, fontWeight: FontWeight.w500, fontFamily: AppFonts.RalewayRegular)),
              SizedBox(height: getProportionateScreenHeight(2),),
              Text("মোট যাকাত : ২৫০০০",style: const TextStyle(color: AppColors.blackTextColor, fontSize: 14, fontWeight: FontWeight.w500, fontFamily: AppFonts.RalewayRegular))


            ],
          ),
        ),
        Positioned(
          right: 15,
          top: 7.5,
          child: GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ReportDetailsScreen()));
            },
            child: Container(
              alignment: Alignment.center,
              height: getProportionateScreenHeight(30),
              width: getProportionateScreenWidth(90),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(10),),
                color: AppColors.appThemeColor,
              ),
              child: Text("বিস্তারিত দেখুন",style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w600, fontFamily: AppFonts.RalewayRegular),),
            ),
          ),
        ),
        Positioned(
          right: 15,
          top: 135,
          child: GestureDetector(
            onTap: (){},
            child: Container(
              alignment: Alignment.center,
              height: getProportionateScreenHeight(30),
              width: getProportionateScreenWidth(90),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),),
                color: Colors.red,
              ),
              child: Text("মুছে ফেলুন",style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w600, fontFamily: AppFonts.RalewayRegular),),
            ),
          ),
        )
      ],
    );
  }
}
