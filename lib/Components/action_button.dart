import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Colors/app_colors.dart';

class ReusableButton extends StatelessWidget {
  final String title;
  final Color color;
  final Color textColor;

  const ReusableButton({Key? key,
    required this.title,
    this.color =  Colors.transparent,
    this.textColor = white,


  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5.w),
        height: 20.h,
        width: 70.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: color,
        ),
        child:Center(child: Text(title , style:  GoogleFonts.poppins(textStyle: TextStyle(color: textColor, fontSize: 9.sp, fontWeight: FontWeight.w400)),)),
      ),
    )
    ;
  }
}
