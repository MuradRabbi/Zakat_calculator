import 'package:flutter/material.dart';
import 'package:zakat_calculator/screens/calculator_screen/calculator_step_five/widgets/step_five_input_field.dart';
import 'package:zakat_calculator/screens/calculator_screen/calculator_step_five/widgets/step_five_table_head.dart';

import '../../../../app_utils/app_colors.dart';
import '../../../../app_utils/appfonts.dart';
import '../../../../app_utils/size_config.dart';
import '../../../../const_and_globals/globals.dart';

class StepFiveTable extends StatefulWidget {
  StepFiveTable({super.key});

  @override
  State<StepFiveTable> createState() => _StepFiveTableState();
}

class _StepFiveTableState extends State<StepFiveTable> {
  void deductibleDebtFormZakatAsset() {
    loanForFamilyPurpose =
        double.tryParse(loanForFamilyPurposeController.text) ?? 0.0;
    allPersonalLoan = double.tryParse(allPersonalLoanController.text) ?? 0.0;
    businessLoanOnWhichFamilyAndPersonalExpenseDependent = double.tryParse(
            businessLoanOnWhichFamilyAndPersonalExpenseDependentController
                .text) ??
        0.0;
    previousDueHouseRentAndUtility =
        double.tryParse(previousDueHouseRentAndUtilityController.text) ?? 0.0;
    workerSalaryDueOnCurrentZakatYear =
        double.tryParse(workerSalaryDueOnCurrentZakatYearController.text) ??
            0.0;
    loanForBusiness = double.tryParse(loanForBusinessController.text) ?? 0.0;
    loanForDevelopment =
        double.tryParse(loanForDevelopmentController.text) ?? 0.0;
    loanEmiForTheWholeYear =
        double.tryParse(loanEmiForTheWholeYearController.text) ?? 0.0;
    wifeDowry = double.tryParse(wifeDowryController.text) ?? 0.0;

    totalAssetMinusFromZakat = loanForFamilyPurpose +
        allPersonalLoan +
        businessLoanOnWhichFamilyAndPersonalExpenseDependent +
        previousDueHouseRentAndUtility +
        workerSalaryDueOnCurrentZakatYear +
        loanForBusiness +
        loanForDevelopment +
        loanEmiForTheWholeYear +
        wifeDowry;


    totalDeductibleAssetFromZakatController.text = totalAssetMinusFromZakat.toString();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    loanForFamilyPurposeController.addListener(deductibleDebtFormZakatAsset);
    allPersonalLoanController.addListener(deductibleDebtFormZakatAsset);
    businessLoanOnWhichFamilyAndPersonalExpenseDependentController.addListener(deductibleDebtFormZakatAsset);
    previousDueHouseRentAndUtilityController.addListener(deductibleDebtFormZakatAsset);
    workerSalaryDueOnCurrentZakatYearController.addListener(deductibleDebtFormZakatAsset);
    loanForBusinessController.addListener(deductibleDebtFormZakatAsset);
    loanForDevelopmentController.addListener(deductibleDebtFormZakatAsset);
    loanEmiForTheWholeYearController.addListener(deductibleDebtFormZakatAsset);
    wifeDowryController.addListener(deductibleDebtFormZakatAsset);
    totalDeductibleAssetFromZakatController.addListener(deductibleDebtFormZakatAsset);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StepFiveTableHead(),
        SizedBox(
          height: getProportionateScreenHeight(10),
        ),
        StepFiveInputField(
          fieldTitle: "১। সাংসারিক প্রয়োজনে গৃহীত ঋণ",
          fieldController: loanForFamilyPurposeController,
          fieldDescription: "",
          height1: 50,
          height2: 50,
        ),
        SizedBox(
          height: getProportionateScreenHeight(10),
        ),
        StepFiveInputField(
          fieldTitle: "২। ব্যক্তিগত পর্যায়ের সকল ঋণ",
          fieldController: allPersonalLoanController,
          fieldDescription: "",
          height1: 50,
          height2: 50,
        ),
        SizedBox(
          height: getProportionateScreenHeight(10),
        ),
        StepFiveInputField(
          fieldTitle:
              "৩। এমন ব্যবসার সকল ঋণ যার উপর নিজের এবং সংসারের খরচ নির্ভরশীল",
          fieldController:
              businessLoanOnWhichFamilyAndPersonalExpenseDependentController,
          fieldDescription: "",
          height1: 50,
          height2: 50,
        ),
        SizedBox(
          height: getProportionateScreenHeight(10),
        ),
        StepFiveInputField(
          fieldTitle: "৪। পেছনের বকেয়া বাড়ি ভাড়া, ইউটিলিটি বিল, ট্যাক্স",
          fieldController: previousDueHouseRentAndUtilityController,
          fieldDescription: "",
          height1: 50,
          height2: 50,
        ),
        SizedBox(
          height: getProportionateScreenHeight(10),
        ),
        StepFiveInputField(
          fieldTitle: "৫। যাকাত বর্ষের ভেতরের বকেয়া কর্মচারীর বেতন-ভাতা",
          fieldController: workerSalaryDueOnCurrentZakatYearController,
          fieldDescription: "",
          height1: 50,
          height2: 50,
        ),
        SizedBox(
          height: getProportionateScreenHeight(10),
        ),
        StepFiveInputField(
          fieldTitle:
              "৬। ব্যবসায়িক লেনদেনের ঋণ (পণ্য ক্রয় বা ভাড়া বাবদ কোনো ব্যক্তি বা প্রতিষ্ঠান যা পাবে)",
          fieldController: loanForBusinessController,
          fieldDescription: "",
          height1: 50,
          height2: 50,
        ),
        SizedBox(
          height: getProportionateScreenHeight(10),
        ),
        StepFiveInputField(
          fieldTitle:
              "৭। ডেভেলপমেন্ট ঋনের যে অংশ যাকাতযোগ্য সম্পদ ক্রয়ের পেছনে ব্যয় হয়েছে",
          fieldController: loanForDevelopmentController,
          fieldDescription: "",
          height1: 50,
          height2: 50,
        ),
        SizedBox(
          height: getProportionateScreenHeight(10),
        ),
        StepFiveInputField(
          fieldTitle:
              "৮। ইনস্টলমেন্টের ভিত্তিতে কিস্তিতে প্রদেয় মেয়াদি ঋণের যতটুকু এক বছরে পরিশোধ করতে হবে",
          fieldController: loanEmiForTheWholeYearController,
          fieldDescription: "",
          height1: 50,
          height2: 50,
        ),
        SizedBox(
          height: getProportionateScreenHeight(10),
        ),
        StepFiveInputField(
          fieldTitle: "৯। স্ত্রীর মোহর ",
          fieldController: wifeDowryController,
          fieldDescription:
              "(যদি তা এই যাকাত বর্ষে আদায়ের নিয়ত করে; নতুবা নয়)",
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
              "যাকাত থেকে বিয়োগযোগ্য \nসম্পদের পরিমাণ",
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
                width: 100,
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
        )
      ],
    );
  }
}
