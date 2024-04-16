import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'font_weight_helper.dart';

abstract class TextStyles {

  static TextStyle roboto20MediumBlack = GoogleFonts.roboto(
    fontSize: 20.sp,
    fontWeight: FontWeightHelper.medium,
    color: Colors.black,
  );
  static TextStyle exo18LightBlack = GoogleFonts.exo(
    fontSize: 18.sp,
    fontWeight: FontWeightHelper.light,
    color: Colors.black,
  );static TextStyle openSans30Black = GoogleFonts.openSans(
    fontSize: 30.sp,
    fontWeight: FontWeightHelper.regular,
    color: Colors.black,
  );static TextStyle sourceCode20Black = GoogleFonts.sourceCodePro(
    fontSize: 20.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.black,
  );
  static TextStyle audioWideRegularBlack = GoogleFonts.audiowide(
    fontSize: 24.sp, // Specify your desired font size
    fontWeight: FontWeightHelper.regular, // Choose the appropriate font weight
    color: Colors.black,
  );
}
//Roboto-> for body text, menus, and information displays.
//audioWide->Use for section headings, titles, and possibly numbers like dates and countdowns.
//Exo-> (For Special Elements)->It works well for drawing attention to specific UI elements like buttons, tags, or status indicators.
//Open Sans->Applicable for sections with more text, like capsule histories or detailed descriptions.
//Source Code Pro-> Ideal for technical data displays, code snippets, or any section where alignment and precision are key.