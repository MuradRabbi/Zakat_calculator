import 'package:flutter/material.dart';
import 'package:zakat_calculator/custom_widgets/custom_app_bar.dart';
import 'package:zakat_calculator/screens/more_screen/widgets/more_item.dart';

import '../../app_utils/app_colors.dart';



class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,

          // decoration: BoxDecoration(
          //     image: DecorationImage(
          //         fit: BoxFit.cover,
          //         image: AssetImage("assets/images/app-background.jpg")
          //     )
          // ),
          child: Column(
            children: [
              SizedBox(height: 35,),
              CustomAppBar(icon: "assets/images/more.png", title: "অন্যান্য"),
              Padding(
                padding: EdgeInsets.only(left: 25),
                child: Column(
                  children: [
                    SizedBox(height: 50,),

                    InkWell(
                      onTap: (){},
                      child: MoreItem(itemIcon: "assets/images/user.png", itemName: "ক্যালকুলেটর সম্পর্কে জরুরী বিষয়")
                    ),
                    SizedBox(height: 20,),
                    InkWell(
                      onTap: (){},
                      child: MoreItem(itemIcon: "assets/images/user-opinion.png", itemName: "আপনার মতামত")
                    ),
                    SizedBox(height: 20,),
                    InkWell(
                      onTap: (){},
                      child: MoreItem(itemIcon: "assets/images/call-center.png", itemName:"অভিজ্ঞ আলেমের কাছে জানুন")
                    ),

                  ],
                ),
              )
            ],
          )
      ),
    );
  }
}
