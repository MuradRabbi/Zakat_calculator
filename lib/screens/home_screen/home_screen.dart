import 'package:flutter/material.dart';
import 'package:zakat_calculator/app_utils/size_config.dart';
import 'package:zakat_calculator/custom_widgets/custom_app_bar.dart';
import 'package:zakat_calculator/screens/home_screen/widgets/home_items.dart';
import 'package:zakat_calculator/screens/calculator_screen/zakat_calculator.dart';
import '../../app_utils/app_colors.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            SizedBox(
              height: getProportionateScreenHeight(35),
            ),
            CustomAppBar(icon: "assets/images/menu.png", title: "হোম"),
            SizedBox(
              height: getProportionateScreenHeight(90),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                HomeItems(
                  icon: "assets/images/animated-calculation-icon.json",
                  title: "যাকাত ক্যালকুলেটর",
                  callBackFunction: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ZakatCalculater()));
                  },
                ),
                HomeItems(
                  icon: "assets/images/question.json",
                  title: "আমি যাকাতের উপযুক্ত?",
                  callBackFunction: () {
                    // Navigator.of(context).push(MaterialPageRoute(
                    //     builder: (context) => ZakatCalculater()));
                  },
                ),
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(50),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                HomeItems(
                  icon: "assets/images/information.json",
                  title: "মাসআলা মাসায়েল",
                  callBackFunction: () {
                    // Navigator.of(context).push(MaterialPageRoute(
                    //     builder: (context) => ZakatCalculater()));
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
