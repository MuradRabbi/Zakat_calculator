import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:zakat_calculator/app_utils/app_colors.dart';
import 'package:zakat_calculator/screens/home_screen/home_screen.dart';
import 'package:zakat_calculator/screens/more_screen.dart';
import 'package:zakat_calculator/screens/report_screen.dart';
import 'package:zakat_calculator/screens/calculator_screen/zakat_calculator.dart';



class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<Widget> _page = [HomeScreen(), ZakatCalculater(), ReportScreen(), ProfileScreen()];
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  int _activePage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 0,
          height: 60.0,
          items: <Widget>[
            Container(padding: EdgeInsets.all(3.0),height: 30,width: 30,child: Image.asset("assets/images/menu.png", color: Colors.white,),),
            Container(padding: EdgeInsets.all(3.0),height: 30,width: 30,child: Image.asset("assets/images/calculator.png", color: Colors.white,),),
            Container(padding: EdgeInsets.all(3.0),height: 30,width: 30,child: Image.asset("assets/images/report.png", color: Colors.white,),),
            Container(padding: EdgeInsets.all(3.0),height: 30,width: 30,child: Image.asset("assets/images/more.png", color: Colors.white,),),


          ],
          color: AppColors.appThemeColor,
          buttonBackgroundColor: AppColors.appThemeColor,
          backgroundColor: AppColors.appBackgroundColor,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          onTap: (index) {
            setState(() {
              _activePage = index;
            });
          },
          letIndexChange: (index) => true,
        ),
        body: _page [_activePage]
    );
  }
}