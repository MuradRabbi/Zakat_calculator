import 'package:flutter/material.dart';

import '../app_utils/app_colors.dart';



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
              customAppbar(),
              Padding(
                padding: EdgeInsets.only(left: 25),
                child: Column(
                  children: [
                    SizedBox(height: 50,),
                    InkWell(
                      onTap: (){},
                      child: othersItem("আপনার প্রোফাইল", "assets/images/user.png")
                    ),
                    SizedBox(height: 20,),
                    InkWell(
                      onTap: (){},
                      child:othersItem("আপনার মতামত", "assets/images/user-opinion.png") ,
                    ),
                    SizedBox(height: 20,),
                    InkWell(
                      onTap: (){},
                      child:othersItem("অভিজ্ঞ আলেমের কাছে জানুন", "assets/images/call-center.png"),
                    ),

                  ],
                ),
              )
            ],
          )
      ),
    );
  }

  Row customAppbar(){
    return  Row(
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
              child: Image.asset("assets/images/more.png", color: Colors.white,),
            ),
          ),
        ),
        SizedBox(width: 15,),
        Text("অন্যান্য",style: TextStyle(color: AppColors.blackTextColor, fontSize: 20, fontWeight: FontWeight.w700),),
      ],
    );
  }

  Row othersItem(String itemName , String itemIcon){
    return Row(
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
              child: Image.asset(itemIcon, color: Colors.white,),
            ),
          ),
        ),
        SizedBox(width: 20,),
        Text(itemName,style: TextStyle(color: AppColors.blackTextColor, fontSize: 18, fontWeight: FontWeight.w700),),
      ],
    );
  }
}
