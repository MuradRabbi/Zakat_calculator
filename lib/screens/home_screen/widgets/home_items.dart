import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:zakat_calculator/app_utils/size_config.dart';

import '../../../app_utils/app_colors.dart';
import '../../../app_utils/appfonts.dart';



class HomeItems extends StatelessWidget {

  Function callBackFunction;
  String icon;
  String title;
  HomeItems({
    required this.callBackFunction,
    required this.icon,
    required this.title,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return InkWell(
      onTap:(){
        callBackFunction();
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: getProportionateScreenHeight(100),
            width: getProportionateScreenHeight(100),
            child: Card(
              elevation: 25.0,
              color: Color(0xff32a349),
              shadowColor: Colors.blueGrey ,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15))
              ),
              child: SizedBox(
                height:getProportionateScreenHeight(100),
                width: getProportionateScreenHeight(100),
                child:Lottie.asset(icon, fit: BoxFit.cover),
              ),
            ),
          ),
          SizedBox(height: 15,),
          Text(title, style: TextStyle(color: AppColors.blackTextColor, fontSize: 14, fontWeight: FontWeight.w700, fontFamily: AppFonts.RalewayRegular),)
        ],
      ),
    );
  }
}
