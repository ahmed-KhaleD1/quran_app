import 'package:flutter/material.dart';

abstract class AppColor {
  static const Color deepPurple = Color(0xff8A38BD);
  static const Color lightPurple = Color(0xffD7A4F9);
  static const Color lightGrey = Color(0xff8789A3);
  static const Color deepOrange = Color(0xffFF9800);
  static const Map<String, Color> azkarBackgroundColors = {
    "أذكار الصباح": Color(0xffFFF4D5),
    "أذكار المساء": Color(0xffE3DBFF),
    "أذكار بعد الصلاة": Color(0xffDDEAFF),
    "أذكار النوم": Color(0xffCFFCFF),
    "أذكار الاستيقاظ": Color(0xffFFE1DE),
  };
}
