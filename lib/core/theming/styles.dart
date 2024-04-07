import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'font_weight_helper.dart';

abstract class TextStyles {

  static TextStyle roboto24Bold = GoogleFonts.roboto(
    fontSize: 40.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.black,
  );
  static TextStyle poppins22regular = GoogleFonts.poppins(
    fontSize: 22.sp,
    fontWeight: FontWeightHelper.regular,
    color: Colors.white,
  );
  static TextStyle poppins22bold = GoogleFonts.poppins(
    fontSize: 22.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.white,
  );
  static TextStyle poppins30bold = GoogleFonts.poppins(
    fontSize: 30.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.white,
  );
  static TextStyle orbitron24Bold = GoogleFonts.orbitron(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.black,
  );
  static TextStyle exo14 = GoogleFonts.exo(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
    color: Colors.black,
  );static TextStyle openSans = GoogleFonts.openSans(
    fontSize: 30.sp,
    fontWeight: FontWeightHelper.regular,
    color: Colors.black,
  );static TextStyle sourceCode = GoogleFonts.sourceCodePro(
    fontSize: 20.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.black,
  );
}
//Roboto-> for body text, menus, and information displays.
//Orbitron->Use for section headings, titles, and possibly numbers like dates and countdowns.
//Exo-> (For Special Elements)->It works well for drawing attention to specific UI elements like buttons, tags, or status indicators.
//Open Sans->Applicable for sections with more text, like capsule histories or detailed descriptions.
//Source Code Pro-> Ideal for technical data displays, code snippets, or any section where alignment and precision are key.