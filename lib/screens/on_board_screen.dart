import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../app_utils/app_colors.dart';
import '../app_utils/appfonts.dart';



class Onboardingscreen extends StatefulWidget {
  @override
  _OnboardingscreenState createState() => _OnboardingscreenState();
}

class _OnboardingscreenState extends State<Onboardingscreen> {
  int currentPage = 0;
  TextEditingController nameController = TextEditingController();
  DateTime selectedDate = DateTime.now();
  String selectedDateString = "";
  String dateTextHolder = "তারিখ পছন্দ করুন";
  PageController _pageViewController = new PageController(
    initialPage: 0,

  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [

          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/bg.png")
                )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Container(
                  height: 500,
                  child: PageView(
                    controller: _pageViewController,
                    children: [
                      // onBoardPage("onBoard1", "Choose Clothes"),
                      // onBoardPage("onBoard2", "Schedule Pickup "),
                      // onBoardPage("onBoard3", "Get Best Iron Service"),
                      // onBoardPage("onBoard2", "Get On Time Delivery"),
                      // onBoardPage("onBoard4", "Pay Later"),
                      stepOne(),
                      stepOne(),
                      stepOne(),
                      stepOne()
                    ],
                    onPageChanged: (value) => {setCurrentPage(value)},
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(4, (index) => getIndicator(index)),
                ),
                Spacer(),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: InkWell(
                    onTap: changePage,
                    child: Container(
                      height: 70,
                      width: 70,
                      margin: EdgeInsets.only(bottom: 30),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                              colors: [Color(0xfff3953b), Color(0xffe57509)],
                              stops: [0,1],
                              begin: Alignment.topCenter
                          )
                      ),
                      child: Icon(Icons.arrow_forward, color:Colors.white, size:40),
                    ),
                  ),
                )
              ],
            ),
          ),

        ],
      ),
    );
  }

  void changePage(){
    if(currentPage == 4){
      // Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
    }
    else{
      _pageViewController.animateToPage(currentPage + 1, duration: Duration(milliseconds: 200), curve: Curves.linear);
    }
  }

  setCurrentPage(int value){
    currentPage = value;
    setState(() {

    });
  }

  AnimatedContainer getIndicator(int pageNo){
    return AnimatedContainer(
      duration: Duration(milliseconds: 100),
      height: 10,
      width: (currentPage == pageNo) ? 30 : 10,
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: (currentPage == pageNo) ? Colors.orange : Colors.grey
      ),
    );
  }

  SizedBox stepOne(){
    return SizedBox(
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(width: 15,),
              Text("প্রথম ধাপ",style: TextStyle(color: AppColors.blackTextColor, fontSize: 18, fontWeight: FontWeight.w700),),
              SizedBox(width: 15,),
              SizedBox(
                height: 18,
                width: 24,
                child: Image.asset("assets/images/step.png", color: AppColors.blackTextColor,),
              ),
            ],
          ),
          SizedBox(height: 30,),
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Column(
              children: [
                Text("আপনার যাকাতের হিসাব বের করার জন্য ধারাবাহিকভাবে নিন্মোল্লেখিত সংশ্লিষ্ট ঘরগুলো যত্নের সাথে পূরণ করুন। মনে রাখবেন - ",
                  style: TextStyle(color: AppColors.blackTextColor, fontSize: 14, fontFamily: AppFonts.RalewayRegular, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      color: AppColors.appThemeColor,
                      padding: EdgeInsets.all(2.0),
                      height: 16,
                      width: 16,
                      child: Image.asset("assets/images/bullet-point.png",color: Colors.white,),
                    ),
                    SizedBox(width: 10,),
                    Flexible(
                      child: Text("সকল সংখ্যা শুধুমাত্র ইংরেজি ডিজিটে, পজিটিভ নাম্বার ইনপুট দিতে হবে।",
                        style: TextStyle(color: AppColors.blackTextColor, fontSize: 14, fontFamily: AppFonts.RalewayRegular, fontWeight: FontWeight.w500),
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      color: AppColors.appThemeColor,
                      padding: EdgeInsets.all(2.0),
                      height: 16,
                      width: 16,
                      child: Image.asset("assets/images/bullet-point.png",color: Colors.white,),
                    ),
                    SizedBox(width: 10,),
                    Flexible(
                      child: Text("ইনপুট দেওয়ার সময় কমা (,) বা অন্য কোন ফরম্যাটিং ব্যাবহার করবেন না।",
                        style: TextStyle(color: AppColors.blackTextColor, fontSize: 14, fontFamily: AppFonts.RalewayRegular, fontWeight: FontWeight.w500),
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      color: AppColors.appThemeColor,
                      padding: EdgeInsets.all(2.0),
                      height: 16,
                      width: 16,
                      child: Image.asset("assets/images/bullet-point.png",color: Colors.white,),
                    ),
                    SizedBox(width: 10,),
                    Flexible(
                      child: Text("কোন সেকশন বুঝতে অসুবিধা হলে নির্ভরযোগ্য আলেমের সাথে আলোচনা করে নিন।",
                        style: TextStyle(color: AppColors.blackTextColor, fontSize: 14, fontFamily: AppFonts.RalewayRegular, fontWeight: FontWeight.w500),
                      ),
                    ),

                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 30,),
          nameInputField(),
          SizedBox(height: 30,),
          chooseDateField(),
        ],
      ),
    );
  }

  Container nameInputField(){
    return  Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      padding: EdgeInsets.only(top: 4, left: 12),
      height: 45,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(8),
          border: Border.all( width: 2.0 , color: AppColors.appThemeColor)
      ),
      child: TextField(
        cursorColor: AppColors.blackTextColor,
        controller: nameController,
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
            isDense: true,
            hintText: "আপনার নাম লিখুন",
            hintStyle: TextStyle(letterSpacing: 0.75 ,color: AppColors.blackTextColor, fontSize: 16, fontWeight: FontWeight.w500, fontFamily: AppFonts.RalewayRegular),
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none

        ),
      ),
    );
  }


  Widget chooseDateField(){
    return  InkWell(
      onTap: (){
        _selectDate(context);
      },
      child: Container(
        padding: const EdgeInsets.only(left: 12),
        margin: EdgeInsets.symmetric(horizontal: 15),
        alignment: Alignment.centerLeft,
        height: 45,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.transparent, borderRadius: BorderRadius.circular(8), border: Border.all(width: 2.0, color: AppColors.appThemeColor)),
        child: Text(dateTextHolder,
          textScaleFactor: 1.0,
          style: const TextStyle(letterSpacing: 0.75 ,color: AppColors.blackTextColor, fontSize: 16, fontWeight: FontWeight.w500, fontFamily: AppFonts.RalewayRegular),),
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(context: context, initialDate: selectedDate, firstDate: DateTime(1970), lastDate: DateTime.now());
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        selectedDateString = "${selectedDate.toLocal()}".split(' ')[0];

        var formatter = DateFormat('dd-MM-yyyy');
        String formattedDate = formatter.format(picked);

        dateTextHolder = formattedDate;
      });
    }
  }

  // Column onBoardPage(String image , String title){
  //   return Column(
  //     mainAxisAlignment: MainAxisAlignment.center,
  //     children: [
  //       Container(
  //         height: 200,
  //         width: MediaQuery.of(context).size.width,
  //         padding: EdgeInsets.all(50),
  //         decoration:BoxDecoration(
  //             image: DecorationImage(
  //
  //                 image: AssetImage("assets/images/$image.png")
  //             )
  //         ),
  //       ),
  //       Container(
  //         padding: EdgeInsets.symmetric(vertical: 10),
  //         child: Text( title ,
  //           textScaleFactor: 1.0,
  //           style: TextStyle(
  //               fontSize: 30,
  //               fontFamily: "roboto",
  //               fontWeight: FontWeight.w500
  //           ),),
  //       ),
  //       Container(
  //         padding: EdgeInsets.symmetric(vertical: 10 , horizontal: 40),
  //         child: Text(
  //           "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,",
  //           style: TextStyle(color:Colors.grey, fontSize: 16),
  //           textAlign: TextAlign.center,
  //           textScaleFactor: 1.0,
  //         ),
  //       )
  //     ],
  //   );
  // }
}