import 'package:flutter/material.dart';

import '../app_utils/app_colors.dart';



class ReportScreen extends StatefulWidget {
  const ReportScreen({Key? key}) : super(key: key);

  @override
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
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
                        child: Image.asset("assets/images/report.png", color: Colors.white,),
                      ),
                    ),
                  ),
                  SizedBox(width: 15,),
                  Text("রিপোর্ট",style: TextStyle(color: AppColors.blackTextColor, fontSize: 20, fontWeight: FontWeight.w700),),
                ],
              ),
            ],
          )
      ),
    );
  }
}
