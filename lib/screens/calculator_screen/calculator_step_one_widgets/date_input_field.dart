import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../app_utils/app_colors.dart';
import '../../../app_utils/appfonts.dart';




class DateInputField extends StatefulWidget {
  const DateInputField({super.key});

  @override
  State<DateInputField> createState() => _DateInputFieldState();
}

class _DateInputFieldState extends State<DateInputField> {

  DateTime selectedDate = DateTime.now();
  String selectedDateString = "";
  String dateTextHolder = "তারিখ পছন্দ করুন";

  @override
  Widget build(BuildContext context) {
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
          style: const TextStyle(color: AppColors.blackTextColor, fontSize: 16, fontWeight: FontWeight.w500, fontFamily: AppFonts.RalewayRegular),),
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
}
