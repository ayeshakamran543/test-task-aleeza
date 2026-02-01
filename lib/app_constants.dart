
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

// colors
const Color kColorBlack = Color(0xff000000);
const Color kColorWhite = Color(0xffffffff);

const Color kColorGrey = Color(0xFF0C0C0C80);
const Color kColorGreen = Color(0xFFEBF9E5);

const Color kColorBrown= Color(0xFF755644);
 Color kColorLightGrey= Color(0xFFF2F2F2);

const Color kColorlightGreen= Color(0xFF07831A);
const Color kColorlightpink= Color(0xFFF6285F);
const Color kColordarkGrey= Color(0xFF4B5563);

const Color kColorlpurple= Color(0xFFEEE9FD);
const Color kColordpurple= Color(0xFFAC92F7);
const Color kColorred= Color(0xFFF65555);
const Color kColorlightblack= Color(0xFF737B98);
const Color kColorlightGgreen= Color(0xFFBFF277);
const Color kColorblue= Color(0xFF415AEC);
const Color kColoryellow= Color(0xFFFFCC00);
const Color kColorbg= Color(0xFFF7F6F9);

const Color kColororange= Color(0xFFFFC553);


//Text styles
TextStyle get kStyleTest => TextStyle(fontSize: 24.sp,fontWeight: FontWeight.w700,fontFamily: 'Inter');
                      // headings
// H1 – 40
TextStyle get kStyleH1   => TextStyle(fontSize: 40.sp, fontFamily: 'Playfair Display');
TextStyle get kStyleH1b  => TextStyle(fontSize: 40.sp, fontWeight: FontWeight.w700, fontFamily: 'Playfair Display');
TextStyle get kStyleH1bm => TextStyle(fontSize: 40.sp, fontWeight: FontWeight.w500, fontFamily: 'Playfair Display');

// H2 – 36
TextStyle get kStyleH2   => TextStyle(fontSize: 36.sp, fontFamily: 'Playfair Display');
TextStyle get kStyleH2b  => TextStyle(fontSize: 36.sp, fontWeight: FontWeight.w700, fontFamily: 'Playfair Display');
TextStyle get kStyleH2bm => TextStyle(fontSize: 36.sp, fontWeight: FontWeight.w500, fontFamily: 'Playfair Display');

// H3 – 24
TextStyle get kStyleH3   => TextStyle(fontSize: 24.sp, fontFamily: 'Playfair Display');
TextStyle get kStyleH3b  => TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w700, fontFamily: 'Playfair Display');
TextStyle get kStyleH3bm => TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w500, fontFamily: 'Playfair Display');

// H4 – 20
TextStyle get kStyleH4   => TextStyle(fontSize: 20.sp, fontFamily: 'Playfair Display');
TextStyle get kStyleH4b  => TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w700, fontFamily: 'Playfair Display');
TextStyle get kStyleH4bm => TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w500, fontFamily: 'Playfair Display');
TextStyle get kStyleH5 => TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600, fontFamily: 'Playfair Display');
        //bodyk
// B1 – 16
TextStyle get kStyleB1   => TextStyle(fontSize: 16.sp, fontFamily: 'poppins');
TextStyle get kStyleB1b  => TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w700, fontFamily: 'poppins');
TextStyle get kStyleB1bm => TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500, fontFamily: 'poppins');

// B2 – 14
TextStyle get kStyleB2   => TextStyle(fontSize: 14.sp, fontFamily: 'poppins');
TextStyle get kStyleB2b  => TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700, fontFamily: 'poppins');
TextStyle get kStyleB2bm => TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500, fontFamily: 'poppins');

                                //labels
                                // L1 – 12
TextStyle get kStyleL1   => TextStyle(fontSize: 12.sp, fontFamily: 'poppins');
TextStyle get kStyleL1b  => TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w700, fontFamily: 'poppins');
TextStyle get kStyleL1bm => TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500, fontFamily: 'poppins');

// L2 – 10
TextStyle get kStyleL2   => TextStyle(fontSize: 10.sp, fontFamily: 'poppins');
TextStyle get kStyleL2b  => TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w700, fontFamily: 'poppins');
TextStyle get kStyleL2bm => TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w500, fontFamily: 'poppins');