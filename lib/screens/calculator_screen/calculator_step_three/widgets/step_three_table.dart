import 'package:flutter/material.dart';
import 'package:zakat_calculator/app_utils/size_config.dart';
import 'package:zakat_calculator/screens/calculator_screen/calculator_step_three/widgets/step_three_input_field.dart';
import '../../../../app_utils/app_colors.dart';
import '../../../../app_utils/appfonts.dart';
import '../../../../const_and_globals/globals.dart';
import '../step_three_table_head.dart';

class StepThreeTable extends StatefulWidget {
  StepThreeTable({super.key});

  @override
  State<StepThreeTable> createState() => _StepThreeTableState();
}

class _StepThreeTableState extends State<StepThreeTable> {
  void totalCashCalculation() {
    cash = double.tryParse(cashController.text) ?? 0.0;
    accumulatedDeposits =
        double.tryParse(accumulatedDepositsController.text) ?? 0.0;
    moneyOwed = double.tryParse(moneyOwedController.text) ?? 0.0;
    securityMoney = double.tryParse(securityMoneyController.text) ?? 0.0;
    foreignCurrency = double.tryParse(foreignCurrencyController.text) ?? 0.0;
    bankAccountDeposited =
        double.tryParse(bankAccountDepositedController.text) ?? 0.0;
    specialDepositAccount =
        double.tryParse(specialDepositAccountController.text) ?? 0.0;
    salaryAccount = double.tryParse(salaryAccountController.text) ?? 0.0;
    bankGuaranteeMoney =
        double.tryParse(bankGuaranteeMoneyController.text) ?? 0.0;
    depositedInsurancePremium =
        double.tryParse(depositedInsurancePremiumController.text) ?? 0.0;
    bondTreasuriesAndSavingsPaper =
        double.tryParse(bondTreasuriesAndSavingsPaperController.text) ?? 0.0;
    providentFund = double.tryParse(providentFundController.text) ?? 0.0;
    companyShareForDividend =
        double.tryParse(companyShareForDividendController.text) ?? 0.0;
    companyShareForSale =
        double.tryParse(companyShareForSaleController.text) ?? 0.0;
    accumulatedCashInAssociation =
        double.tryParse(accumulatedCashInAssociationController.text) ?? 0.0;
    cashInvestedInBusiness =
        double.tryParse(cashInvestedInBusinessController.text) ?? 0.0;
    outstandingValueForBusinessProduct =
        double.tryParse(outstandingValueForBusinessProductController.text) ??
            0.0;
    accumulatedCashFromRentAndOthers =
        double.tryParse(accumulatedCashFromRentAndOthersController.text) ?? 0.0;

    totalCash = cash +
        accumulatedDeposits +
        moneyOwed +
        securityMoney +
        foreignCurrency +
        bankAccountDeposited +
        specialDepositAccount +
        salaryAccount +
        bankGuaranteeMoney +
        depositedInsurancePremium +
        bondTreasuriesAndSavingsPaper +
        providentFund +
        companyShareForDividend +
        companyShareForSale +
        accumulatedCashInAssociation +
        cashInvestedInBusiness +
        outstandingValueForBusinessProduct +
        accumulatedCashFromRentAndOthers;

    totalCashController.text = totalCash.toString();
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
     cashController.addListener(totalCashCalculation);
     accumulatedDepositsController.addListener(totalCashCalculation);
     moneyOwedController.addListener(totalCashCalculation);
     securityMoneyController.addListener(totalCashCalculation);
     foreignCurrencyController.addListener(totalCashCalculation);
     bankAccountDepositedController.addListener(totalCashCalculation);
     specialDepositAccountController.addListener(totalCashCalculation);
     salaryAccountController.addListener(totalCashCalculation);
     bankGuaranteeMoneyController.addListener(totalCashCalculation);
     depositedInsurancePremiumController.addListener(totalCashCalculation);
     bondTreasuriesAndSavingsPaperController.addListener(totalCashCalculation);
     providentFundController.addListener(totalCashCalculation);
     companyShareForDividendController.addListener(totalCashCalculation);
     companyShareForSaleController.addListener(totalCashCalculation);
     accumulatedCashInAssociationController.addListener(totalCashCalculation);
     cashInvestedInBusinessController.addListener(totalCashCalculation);
     outstandingValueForBusinessProductController.addListener(totalCashCalculation);
     accumulatedCashFromRentAndOthersController.addListener(totalCashCalculation);
     totalCashController.addListener(totalCashCalculation);
    // totalCashController.addListener(totalCashCalculation);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StepThreeTableHead(),
        SizedBox(
          height: getProportionateScreenHeight(10),
        ),
        StepThreeInputField(
          fieldTitle: "১। নগদ টাকা",
          fieldController: cashController,
          fieldDescription: "",
        ),
        SizedBox(
          height: getProportionateScreenHeight(10),
        ),
        StepThreeInputField(
          fieldTitle: "২। কারো কাছে গচ্ছিত আমানত",
          fieldController: accumulatedDepositsController,
          fieldDescription: "",
        ),
        SizedBox(
          height: getProportionateScreenHeight(10),
        ),
        StepThreeInputField(
          fieldTitle: "৩। অন্যের কাছে পাওনা টাকা",
          fieldController: moneyOwedController,
          fieldDescription: "(যা পাওয়া নিশ্চিত বা পাওয়ার আশা আছে)",
        ),
        SizedBox(
          height: getProportionateScreenHeight(10),
        ),
        StepThreeInputField(
          fieldTitle: "৪। সিকিউরিটি মানি",
          fieldController: securityMoneyController,
          fieldDescription:
              "(যা সম্পূর্ণ ফেরৎযোগ্য; অ্যাডভান্স হিসেবে অফেরৎযোগ্য অগ্রিম ভাড়া নয়)",
        ),
        SizedBox(
          height: getProportionateScreenHeight(10),
        ),
        StepThreeInputField(
          fieldTitle: "৫। বৈদেশিক মুদ্রা",
          fieldController: foreignCurrencyController,
          fieldDescription: "(বর্তমান এক্সচেঞ্জ রেট)",
        ),
        SizedBox(
          height: getProportionateScreenHeight(10),
        ),
        StepThreeInputField(
          fieldTitle: "৬। ব্যাংক একাউন্টে জমাকৃত অর্থ",
          fieldController: bankAccountDepositedController,
          fieldDescription:
              "(কারেন্ট ও সেভিংস অ্যাকাউন্ট, ফিক্সড ডিপোজিট, ডিপিএস, এফডিআর ইত্যাদি যাবতীয় অ্যাকাউন্টে জমা অর্থ।অতিরিক্ত ইন্টারেস্ট পুরোটাই সদকা করা জরুরী।)",
        ),
        SizedBox(
          height: getProportionateScreenHeight(10),
        ),
        StepThreeInputField(
          fieldTitle: "৭। বিশেষ জমা অ্যাকাউন্ট",
          fieldController: specialDepositAccountController,
          fieldDescription: "(হজ, বিয়ে ইত্যাদির জন্য নিজের জমাকৃত ব্যালেন্স)",
        ),
        SizedBox(
          height: getProportionateScreenHeight(10),
        ),
        StepThreeInputField(
          fieldTitle: "৮। স্যালারি অ্যাকাউন্ট",
          fieldController: salaryAccountController,
          fieldDescription: "(সাধারণ মাসিক খরচের অতিরিক্ত জমা থাকলে সে টাকা)",
        ),
        SizedBox(
          height: getProportionateScreenHeight(10),
        ),
        StepThreeInputField(
          fieldTitle: "৯। ব্যাংক গ্যারান্টি মানি",
          fieldController: bankGuaranteeMoneyController,
          fieldDescription:
              "(নিজের জমাকৃত ব্যালেন্স।অতিরিক্ত ইন্টারেস্ট পুরোটাই সদকা করা জরুরী।)",
        ),
        SizedBox(
          height: getProportionateScreenHeight(10),
        ),
        StepThreeInputField(
          fieldTitle: "১০। বীমায় জমাকৃত প্রিমিয়াম",
          fieldController: depositedInsurancePremiumController,
          fieldDescription:
              "(নিজের জমাকৃত প্রিমিয়াম।অতিরিক্ত ইন্টারেস্ট পুরোটাই সদকা করা জরুরী।)",
        ),
        SizedBox(
          height: getProportionateScreenHeight(10),
        ),
        StepThreeInputField(
          fieldTitle: "১১। বন্ড, ট্রেজারী বিল, সঞ্চয়পত্র",
          fieldController: bondTreasuriesAndSavingsPaperController,
          fieldDescription:
              "(ক্রয় মূল্য।অতিরিক্ত ইন্টারেস্ট পুরোটাই সদকা করা জরুরী।)",
        ),
        SizedBox(
          height: getProportionateScreenHeight(10),
        ),
        StepThreeInputField(
          fieldTitle: "১২। প্রভিডেন্ট ফান্ড",
          fieldController: providentFundController,
          fieldDescription:
              "(যদি ঐচ্ছিক হয়, বাধ্যতামূলক কেটে রাখা অংশের বিগত বছরের যাকাত দিতে হবে না। টাকা হস্তগত হওয়ার পর থেকে হিসাব শুরু হবে।নিজের জমাকৃত অর্থ)",
        ),
        SizedBox(
          height: getProportionateScreenHeight(10),
        ),
        StepThreeInputField(
          fieldTitle: "১৩। কোম্পানির শেয়ার",
          fieldController: companyShareForDividendController,
          fieldDescription:
              "(কোম্পানি থেকে ডিভিডেন্ড পাওয়ার উদ্দেশ্যে ক্রয়কৃত।ব্যালেন্স শিট দেখে নিজের অংশে বিদ্যমান যাকাতযোগ্য সম্পদ।)",
        ),
        SizedBox(
          height: getProportionateScreenHeight(10),
        ),
        StepThreeInputField(
          fieldTitle: "১৪। কোম্পানির শেয়ার",
          fieldController: companyShareForSaleController,
          fieldDescription:
              "(ক্যাপিটাল গেইন তথা সেকেন্ডারি মার্কেটে ব্যবসার উদ্দেশ্যে ক্রয়কৃত।বর্তমান মার্কেট ভ্যালু।)",
        ),
        SizedBox(
          height: getProportionateScreenHeight(10),
        ),
        StepThreeInputField(
          fieldTitle: "১৫। সমিতিতে সঞ্চিত নগদ অর্থ",
          fieldController: accumulatedCashInAssociationController,
          fieldDescription: "(নিজের জমাকৃত ব্যালেন্স)",
        ),
        SizedBox(
          height: getProportionateScreenHeight(10),
        ),
        StepThreeInputField(
          fieldTitle: "১৬। ব্যবসায় বিনিয়োগকৃত অর্থ",
          fieldController: cashInvestedInBusinessController,
          fieldDescription: "(নিজের অংশে বিদ্যমান যাকাতযোগ্য সম্পদ)",
        ),
        SizedBox(
          height: getProportionateScreenHeight(10),
        ),
        StepThreeInputField(
          fieldTitle: "১৭। ব্যবসায়িক পণ্যের বকেয়া মূল্য",
          fieldController: outstandingValueForBusinessProductController,
          fieldDescription: "(যা পাওয়া নিশ্চিত বা পাওয়ার আশা আছে)",
        ),
        SizedBox(
          height: getProportionateScreenHeight(10),
        ),
        StepThreeInputField(
            fieldTitle:
                "১৮। বাড়ি ভাড়া, গাড়ি ভাড়া ইত্যাদি বিবিধ উৎস থেকে অর্জিত আয়ের সঞ্চিত অর্থ",
            fieldController: accumulatedCashFromRentAndOthersController,
            fieldDescription: "	(যদি উপরের কোনো ঘরে না গিয়ে থাকে)",
            height1: 70,
            height2: 70),
        SizedBox(
          height: 5,
        ),
      ],
    );
  }
}
