//Roboto-> for body text, menus, and information displays.
//Orbitron->Use for section headings, titles, and possibly numbers like dates and countdowns.
//Exo-> (For Special Elements)->It works well for drawing attention to specific UI elements like buttons, tags, or status indicators.
//Open Sans->Applicable for sections with more text, like capsule histories or detailed descriptions.
//Source Code

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'colors.dart';
import 'font_weight_helper.dart';

abstract class TextStyles {

  static TextStyle fontSpace28lightWhite= GoogleFonts.spaceGrotesk(
    fontSize: 28.sp,
    fontWeight: FontWeightHelper.light,
    color: AppColors.whiteColor,
  );
  static TextStyle fontSpace18lightGrey= GoogleFonts.spaceGrotesk(
    fontSize: 18.sp,
    fontWeight: FontWeightHelper.light,
    color: AppColors.lightGrey,
  );
  static TextStyle fontSpace18RegularWhite= GoogleFonts.spaceGrotesk(
    fontSize: 18.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColors.whiteColor,
  );
  static TextStyle fontSpace16RegularLightBlue= GoogleFonts.spaceGrotesk(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColors.lightBlueColor,
  );
  static TextStyle fontSpace16RegularWhite= GoogleFonts.spaceGrotesk(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColors.whiteColor,
  );
  static TextStyle fontSpace13RegularGrey= GoogleFonts.spaceGrotesk(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColors.gray,
  );
  static TextStyle fontSpace13RegularWhite= GoogleFonts.spaceGrotesk(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColors.whiteColor,
  );
  static TextStyle fontSpace24RegularWhite= GoogleFonts.spaceGrotesk(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColors.whiteColor,
  );


  static TextStyle fontSpace22RegularWhite= GoogleFonts.spaceGrotesk(
    fontSize: 22.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColors.whiteColor,
  );

  static TextStyle fontSpace22BoldlightGray= GoogleFonts.spaceGrotesk(
    fontSize: 22.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.lighterGray,
  );

  static TextStyle fontSpace36RegularWhite= GoogleFonts.spaceGrotesk(
    fontSize: 36.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColors.whiteColor,
  );
















  static TextStyle roboto24BoldBlack = GoogleFonts.roboto(
    fontSize: 40.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.black,
  );
  static TextStyle orbitron24BoldBlack = GoogleFonts.orbitron(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.black,
  );
  static TextStyle orbitron24BoldWhite = GoogleFonts.orbitron(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.white,
  );

  static TextStyle orbitron40BoldWhite = GoogleFonts.orbitron(
    fontSize: 40.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.white,
  );
  static TextStyle exo14Black = GoogleFonts.exo(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
    color: Colors.black,
  );

  static TextStyle exo24White = GoogleFonts.exo(
    fontSize: 28.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: Colors.white,
  );
  static TextStyle openSans30Black = GoogleFonts.openSans(
    fontSize: 30.sp,
    fontWeight: FontWeightHelper.regular,
    color: Colors.black,
  );
  static TextStyle sourceCode20Black = GoogleFonts.sourceCodePro(
    fontSize: 20.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.black,
  );
  static TextStyle sourceCode20White = GoogleFonts.sourceCodePro(
    fontSize: 20.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.white,
  );
  static TextStyle exo14White = GoogleFonts.exo(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
    color: Colors.white,
  );
  static TextStyle BoldlWhite = GoogleFonts.poppins(
    fontSize: 26,
    fontWeight: FontWeightHelper.medium,
    color: Colors.white,
  );
  static TextStyle NormalWhite = GoogleFonts.poppins(
    fontSize: 22,
    fontWeight: FontWeightHelper.light,
    color: Colors.white,
  );
  static TextStyle font22RegularWhite = GoogleFonts.poppins(
    fontSize: 22,
    fontWeight: FontWeightHelper.regular,
    color: Colors.white,
  );
  static TextStyle SmallWhite = GoogleFonts.poppins(
    fontSize: 15,
    fontWeight: FontWeightHelper.light,
    color: Colors.white,
  );
  static TextStyle poppins28BoldWhite = GoogleFonts.poppins(
    fontSize: 28.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.whiteColor,
  );

  static TextStyle poppins21MediumBlack = GoogleFonts.poppins(
    fontSize: 21.sp,
    fontWeight: FontWeightHelper.medium,
    color: Colors.black,
  );
  static TextStyle poppins40MediumWhite = GoogleFonts.poppins(
    fontSize: 40.sp,
    fontWeight: FontWeightHelper.medium,
    color: AppColors.whiteColor,
  );
  static TextStyle poppins63SemiBoldWhite = GoogleFonts.poppins(
    fontSize: 63.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: AppColors.whiteColor,
  );
  static TextStyle poppins19MediumWhite = GoogleFonts.poppins(
    fontSize: 19.sp,
    fontWeight: FontWeightHelper.medium,
    color: AppColors.whiteColor,
  );
  static TextStyle poppins17MediumWhite = GoogleFonts.poppins(
    fontSize: 17.sp,
    fontWeight: FontWeightHelper.medium,
    color: AppColors.whiteColor,
  );
  static TextStyle poppins17LightWhite = GoogleFonts.poppins(
    fontSize: 17.sp,
    fontWeight: FontWeightHelper.light,
    color: AppColors.whiteColor,
  );

  static TextStyle roboto36WhiteFontWeight700 = GoogleFonts.roboto(
    fontSize: 36.sp,
    fontWeight: FontWeight.w700,
    color: AppColors.whiteColor,
  );
  static TextStyle poppins16WhiteFontWeight300 = GoogleFonts.poppins(
    fontSize: 16.sp,
    fontWeight: FontWeight.w300,
    color: AppColors.whiteColor,
  );
  static TextStyle font24BlueBold = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.earthBlue,
  );

  static TextStyle font14GrayRegular = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColors.gray,
  );
}
