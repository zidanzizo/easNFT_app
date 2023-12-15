import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color primaryColor = const Color(0xFFE8FB7A);
Color bodyBackgroundColor = const Color(0xFF161616);
Color backgroundColor = const Color(0xFF262626);
Color greyColor = const Color(0xFF848484);
Color whiteColor = const Color(0xFFFFFFFF);
Color whiteGreyColor = const Color(0xFFEAEAEA);
Color cardColor = const Color(0xFF1D1D1D);
Color yellowColor = const Color(0xFFF9D545);
Color yellowDarkColor = const Color(0xFF2B2D20);
Color redColor = const Color(0xFFFD044F);

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;
FontWeight black = FontWeight.w900;

// font family (use this if user medium, semiBold, extrabold, black)
String? mediumText = GoogleFonts.poppins(fontWeight: medium).fontFamily;
String? semiBoldText = GoogleFonts.poppins(fontWeight: semiBold).fontFamily;
String? extraBoldText = GoogleFonts.poppins(fontWeight: extraBold).fontFamily;
String? blackText = GoogleFonts.poppins(fontWeight: black).fontFamily;

TextStyle whiteTextStyle = TextStyle(
  color: whiteColor,
);

TextStyle whiteGreyTextStyle = TextStyle(
  color: whiteGreyColor,
);

TextStyle greyTextStyle = TextStyle(
  color: greyColor,
);
TextStyle primaryTextStyle = TextStyle(
  color: primaryColor,
);
