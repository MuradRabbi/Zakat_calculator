import 'package:flutter/material.dart';
import 'package:zakat_calculator/app_utils/appfonts.dart';
import 'package:zakat_calculator/screens/calculator_screen/calculator_step_four.dart';
import 'package:zakat_calculator/screens/calculator_screen/calculator_step_one.dart';
import '../../app_utils/app_colors.dart';
import 'calculator_step_three.dart';
import 'calculator_step_two.dart';





class ZakatCalculater extends StatefulWidget {
  const ZakatCalculater({Key? key}) : super(key: key);

  @override
  State<ZakatCalculater> createState() => _ZakatCalculaterState();
}

class _ZakatCalculaterState extends State<ZakatCalculater> {

  int currentPage = 0;
  final PageController _pageViewController = PageController(
    initialPage: 0,
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [

            const SizedBox(height: 35,),
            customAppbar(),
            const SizedBox(height: 10,),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              height:MediaQuery.of(context).size.height/1.4,
              child: PageView(
                physics: const NeverScrollableScrollPhysics() ,
                controller: _pageViewController,
                children: const [
                  CalculatorStepOne(),
                  CalculatorStepTwo(),
                  CalculatorStepThree(),
                  CalculatorStepFour(),
                ],
                onPageChanged: (value) => {setCurrentPage(value)},
              ),
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(4, (index) => getIndicator(index)),
            ),
            const SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Visibility(
                    visible: currentPage == 0 ? false : true,
                    child: previousStepButton(),
                  ),
                  Visibility(
                    visible: currentPage == 3 ? false : true,
                    child: nextStepButton(),
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }


  Row customAppbar(){
    return  Row(
      children: [
        const SizedBox(width: 15,),
        SizedBox(
          height: 40,
          width: 40,
          child: Card(
            elevation: 15.0,
            color: const Color(0xff32a349),
            shadowColor: Colors.blueGrey ,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(6))
            ),
            child: Container(
              margin: const EdgeInsets.all(6),
              child: Image.asset("assets/images/calculator.png", color: Colors.white,),
            ),
          ),
        ),
        const SizedBox(width: 15,),
        Text("যাকাত ক্যালকুলেটর",style: TextStyle(color: AppColors.blackTextColor, fontSize: 20, fontWeight: FontWeight.w700),),
      ],
    );
  }

  InkWell nextStepButton(){
    return InkWell(
      onTap: nextChangePage,
      child: Container(
        alignment: Alignment.center,
        height: 35,
        width: 105,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: AppColors.appThemeColor,

        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("পরবর্তী ধাপ", style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w700, fontFamily: AppFonts.RalewayRegular),),
            SizedBox(height: 14,width: 21, child: Image.asset("assets/images/step.png", color: Colors.white,),)
          ],
        )
      ),
    );
  }

  InkWell previousStepButton(){
    return InkWell(
      onTap: previousChangePage,
      child: Container(
          alignment: Alignment.center,
          height: 35,
          width: 105,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: AppColors.appThemeColor,

          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 14,width: 21, child: Image.asset("assets/images/previous-step.png", color: Colors.white,),),
              Text("পূর্ববর্তী ধাপ", style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w700, fontFamily: AppFonts.RalewayRegular),),
            ],
          )
      ),
    );
  }

  void nextChangePage(){
    if(currentPage == 4){
      // Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
    }
    else{
      _pageViewController.animateToPage(currentPage + 1, duration: Duration(milliseconds: 200), curve: Curves.linear);
    }
  }

  void previousChangePage(){
    if(currentPage == 4){
      // Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
    }
    else{
      _pageViewController.animateToPage(currentPage - 1, duration: Duration(milliseconds: 200), curve: Curves.linear);
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
          color: (currentPage == pageNo) ? AppColors.appThemeColor : Colors.grey
      ),
    );
  }
}
