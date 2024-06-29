import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle {
  static TextStyle interBlackF20W500 = GoogleFonts.inter(
    textStyle: const TextStyle(
        color: Color(0xFF0F1114), fontSize: 20, fontWeight: FontWeight.w500),
  );
  static TextStyle interBlueF14W600 = GoogleFonts.inter(
    textStyle: const TextStyle(
        color: Color(0xFF1A73E9), fontSize: 14, fontWeight: FontWeight.w600),
  );
  static TextStyle interGreyF12W400 = GoogleFonts.inter(
    textStyle: const TextStyle(
        color: Color(0xFF565859), fontSize: 12, fontWeight: FontWeight.w400),
  );
  static TextStyle interWhiteF10W500 = GoogleFonts.inter(
    textStyle: const TextStyle(
        color: Colors.white, fontSize: 10, fontWeight: FontWeight.w500),
  );
}