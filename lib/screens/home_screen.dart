import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:zakat_calculator/screens/zakat_calculator.dart';

import '../app_utils/app_colors.dart';
import '../app_utils/appfonts.dart';
import 'main_screen.dart';




class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      drawer: Drawer(),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            SizedBox(height: 35,),
            Row(
              children: [
                SizedBox(width: 15,),
                SizedBox(
                  height: 40,
                  width: 40,
                  child: Card(
                    elevation: 15.0,
                    color: Color(0xff32a349),
                    shadowColor: Colors.blueGrey ,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6))
                    ),
                    child: Container(
                      margin: EdgeInsets.all(6),
                      child: Image.asset("assets/images/menu.png", color: Colors.white,),
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Text("হোম",style: TextStyle(color: AppColors.blackTextColor, fontSize: 20, fontWeight: FontWeight.w700),),
              ],
            ),
            SizedBox(height: 130,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 InkWell(
                   onTap:(){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => ZakatCalculater()))  ;
            },
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                       SizedBox(
                         height: 120,
                         width: 120,
                         child: Card(
                           elevation: 25.0,
                           color: Color(0xff32a349),
                           shadowColor: Colors.blueGrey ,
                           shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.all(Radius.circular(15))
                           ),
                           child: SizedBox(
                             height: 120,
                             width: 120,
                             child:Lottie.asset("assets/images/animated-calculation-icon.json", fit: BoxFit.cover),
                           ),
                         ),
                       ),
                       SizedBox(height: 15,),
                       Text("যাকাত ক্যালকুলেটর", style: TextStyle(color: AppColors.blackTextColor, fontSize: 16, fontWeight: FontWeight.w700, fontFamily: AppFonts.RalewayRegular),)
                     ],
                   ),
                 ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 120,
                        width: 120,
                        child: Card(
                          elevation: 25.0,
                          color: Color(0xff32a349),
                          shadowColor: Colors.blueGrey ,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(15))
                          ),
                          child: SizedBox(
                            height: 120,
                            width: 120,
                            child:Lottie.asset("assets/images/question.json", fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      SizedBox(height: 15,),
                      Text("আমি যাকাতের উপযুক্ত?", style: TextStyle(color: AppColors.blackTextColor, fontSize: 16, fontWeight: FontWeight.w700, fontFamily: AppFonts.RalewayRegular),)
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 120,
                      width: 120,
                      child: Card(
                        elevation: 25.0,
                        color: Color(0xff32a349),
                        shadowColor: Colors.blueGrey ,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15))
                        ),
                        child: SizedBox(
                          height: 120,
                          width: 120,
                          child:Lottie.asset("assets/images/information.json", fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Text("মাসআলা মাসায়ায়েল", style: TextStyle(color: AppColors.blackTextColor, fontSize: 16, fontWeight: FontWeight.w700, fontFamily: AppFonts.RalewayRegular),)
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
