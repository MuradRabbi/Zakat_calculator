import 'package:flutter/material.dart';
import 'package:zakat_calculator/app_utils/size_config.dart';
import 'package:zakat_calculator/screens/calculator_screen/calculator_step_four/widgets/step_four_input_field.dart';
import 'package:zakat_calculator/screens/calculator_screen/calculator_step_four/widgets/step_four_table_head.dart';
import '../../../../app_utils/app_colors.dart';
import '../../../../app_utils/appfonts.dart';
import '../../../../const_and_globals/globals.dart';

class StepFourTable extends StatefulWidget {
  StepFourTable({super.key});

  @override
  State<StepFourTable> createState() => _StepFourTableState();
}

class _StepFourTableState extends State<StepFourTable> {
  void totalAssetForBusinessCalculation() {
    purchaseLandAndPlotForBusiness =
        double.tryParse(purchaseLandAndPlotForBusinessController.text) ?? 0.0;
    purchaseFlatAndHouseForBusiness =
        double.tryParse(purchaseFlatAndHouseForBusinessController.text) ?? 0.0;
    purchaseVehicleForBusiness =
        double.tryParse(purchaseVehicleForBusinessController.text) ?? 0.0;
    salableProductForCompany =
        double.tryParse(salableProductForCompanyController.text) ?? 0.0;
    allSalableProductForBusiness =
        double.tryParse(allSalableProductForBusinessController.text) ?? 0.0;
    rawMaterialsForProduction =
        double.tryParse(rawMaterialsForProductionController.text) ?? 0.0;
    purchaseAnimalsForBusiness =
        double.tryParse(purchaseAnimalsForBusinessController.text) ?? 0.0;

    totalAssetForBusiness = purchaseLandAndPlotForBusiness +
        purchaseFlatAndHouseForBusiness +
        purchaseVehicleForBusiness +
        salableProductForCompany +
        allSalableProductForBusiness +
        rawMaterialsForProduction +
        purchaseAnimalsForBusiness;


    totalAssetForBusinessController.text = totalAssetForBusiness.toString();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    purchaseLandAndPlotForBusinessController.addListener(totalAssetForBusinessCalculation);
    purchaseFlatAndHouseForBusinessController.addListener(totalAssetForBusinessCalculation);
    purchaseVehicleForBusinessController.addListener(totalAssetForBusinessCalculation);
    salableProductForCompanyController.addListener(totalAssetForBusinessCalculation);
    allSalableProductForBusinessController.addListener(totalAssetForBusinessCalculation);
    rawMaterialsForProductionController.addListener(totalAssetForBusinessCalculation);
    purchaseAnimalsForBusinessController.addListener(totalAssetForBusinessCalculation);
    totalAssetForBusinessController.addListener(totalAssetForBusinessCalculation);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StepFourTableHead(),
        SizedBox(
          height: getProportionateScreenHeight(10),
        ),
        StepFourInputField(
          fieldTitle: "১। ব্যবসার উদ্দেশ্যে ক্রয়কৃত জমি, প্লট",
          fieldController: purchaseLandAndPlotForBusinessController,
          fieldDescription:
              "(যা কেনা হয়েছে বিক্রির নিয়তে।বর্তমান বিক্রয় মূল্য।)",
          height1: 50,
          height2: 50,
        ),
        SizedBox(
          height: getProportionateScreenHeight(10),
        ),
        StepFourInputField(
          fieldTitle: "২। ব্যবসার উদ্দেশ্যে ক্রয়কৃত ফ্ল্যাট, বাড়ি",
          fieldController: purchaseFlatAndHouseForBusinessController,
          fieldDescription:
              "(যা কেনা হয়েছে বিক্রির নিয়তে, ভাড়ায় প্রদত্ত ফ্ল্যাট বা বাড়ি নয়।বর্তমান বিক্রয় মূল্য।)",
          height1: 50,
          height2: 50,
        ),
        SizedBox(
          height: getProportionateScreenHeight(10),
        ),
        StepFourInputField(
          fieldTitle: "৩। ব্যবসার গাড়ি",
          fieldController: purchaseVehicleForBusinessController,
          fieldDescription:
              "(যা কেনা হয়েছে বিক্রির নিয়তে, ভাড়ায় চালিত গাড়ি নয়।বর্তমান বিক্রয় মূল্য।)",
          height1: 50,
          height2: 50,
        ),
        SizedBox(
          height: getProportionateScreenHeight(10),
        ),
        StepFourInputField(
          fieldTitle: "৪। কোম্পানির বিক্রয়যোগ্য ব্যবসায়িক পণ্য",
          fieldController: salableProductForCompanyController,
          fieldDescription: "(বর্তমান বিক্রয় মূল্য।)",
          height1: 50,
          height2: 50,
        ),
        SizedBox(
          height: getProportionateScreenHeight(10),
        ),
        StepFourInputField(
          fieldTitle: "৫। সকল ব্যবসার বিক্রয়যোগ্য পণ্য",
          fieldController: allSalableProductForBusinessController,
          fieldDescription: "(বর্তমান বিক্রয় মূল্য।)",
          height1: 50,
          height2: 50,
        ),
        SizedBox(
          height: getProportionateScreenHeight(10),
        ),
        StepFourInputField(
          fieldTitle: "৬। ব্যবসায়িক পণ্য তৈরির মজুদ কাঁচামাল",
          fieldController: rawMaterialsForProductionController,
          fieldDescription: "(বর্তমান বিক্রয় মূল্য।)",
          height1: 50,
          height2: 50,
        ),
        SizedBox(
          height: getProportionateScreenHeight(10),
        ),
        StepFourInputField(
          fieldTitle: "৭। ব্যবসার জন্য ক্রয়কৃত পশু-প্রাণী",
          fieldController: purchaseAnimalsForBusinessController,
          fieldDescription:
              "(গরু, ছাগল, মাছ মুরগি ইত্যাদি।বর্তমান বিক্রয় মূল্য।)",
          height1: 50,
          height2: 50,
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "মোট ব্যবসায়িক সম্পদ",
              style: TextStyle(
                  color: AppColors.blackTextColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w900,
                  fontFamily: AppFonts.RalewayRegular),
            ),
            Container(
                padding: EdgeInsets.only(right: 10),
                alignment: Alignment.center,
                height: 30,
                width: 150,
                child: TextField(
                  cursorColor: AppColors.blackTextColor,
                  controller: totalAssetForBusinessController,
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
                )),
          ],
        )
      ],
    );
  }
}
