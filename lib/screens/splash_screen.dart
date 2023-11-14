import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:zakat_calculator/app_utils/appfonts.dart';
import 'package:zakat_calculator/screens/home_screen/home_screen.dart';

import '../app_utils/app_colors.dart';
import 'main_screen.dart';




class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MainScreen())
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/images/app-background.jpg")
          )
        ),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("যাকাত ক্যাল্কুলেটর", style: TextStyle(color:AppColors.blackTextColor, fontWeight:FontWeight.w700, fontSize: 32, fontFamily: AppFonts.RalewayRegular),),
            SizedBox(height: 40,),
            SizedBox(
              height: 180,
              width: 180,
              child: Card(
                elevation: 25.0,
                color: Color(0xff32a349),
                shadowColor: Colors.blueGrey ,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))
                ),
                child: Lottie.asset("assets/images/splash-animation.json", fit: BoxFit.cover),
              ),
            ),
            SizedBox(height: 40,),
            Text("নিজেই হিসাব করুন নিজের যাকাত।", style: TextStyle(color: AppColors.blackTextColor, fontWeight:FontWeight.w500, fontSize: 24,fontFamily: AppFonts.RalewayRegular),)
          ],
        ),
      ),

    );
  }
}
