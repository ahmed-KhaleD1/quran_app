import 'package:flutter/material.dart';
import 'package:quran_app/core/utils/app_colors.dart';
import 'package:quran_app/core/utils/app_fonsts.dart';

abstract class AppStyles {
  static TextStyle quranBold20(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontFamily: AppFonst.quran,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle kufiRegular16(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: AppFonst.kufi,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle kufiMedium12(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontFamily: AppFonst.kufi,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle kufiMedium14(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontFamily: AppFonst.kufi,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle kufiMedium16(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: AppFonst.kufi,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle kufiMedium20(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontFamily: AppFonst.kufi,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle kufiMedium24(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontFamily: AppFonst.kufi,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle kufiSemiBold12(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontFamily: AppFonst.kufi,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle kufiSemiBold20(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontFamily: AppFonst.kufi,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle kufiBold16(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: AppFonst.kufi,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle kufiBold20(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontFamily: AppFonst.kufi,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle kufiBold24(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontFamily: AppFonst.kufi,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle kufiBold28(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 28),
      fontFamily: AppFonst.kufi,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle splartBold60(BuildContext context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 60),
        fontFamily: AppFonst.splart,
        fontWeight: FontWeight.w700,
        color: Colors.white);
  }

  static TextStyle splartMedium24(BuildContext context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 24),
        fontFamily: AppFonst.splart,
        fontWeight: FontWeight.w500,
        color: Colors.black);
  }

  static TextStyle splartMedium20(BuildContext context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 20),
        fontFamily: AppFonst.splart,
        fontWeight: FontWeight.w500,
        color: Colors.black);
  }

  static TextStyle splartMedium16(BuildContext context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        fontFamily: AppFonst.splart,
        fontWeight: FontWeight.w500,
        color: Colors.black);
  }

  static TextStyle splartBold24(BuildContext context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 24),
        fontFamily: AppFonst.splart,
        fontWeight: FontWeight.w700,
        color: Colors.black);
  }

  static TextStyle splartBold42(BuildContext context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 42),
        fontFamily: AppFonst.splart,
        fontWeight: FontWeight.w700,
        color: Colors.black);
  }

  static TextStyle baradaBold20(BuildContext context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 20),
        fontFamily: AppFonst.barada,
        fontWeight: FontWeight.w700,
        color: Colors.black);
  }

  static TextStyle aimriMedium24(BuildContext context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 24),
        fontFamily: AppFonst.amiri,
        fontWeight: FontWeight.w500,
        locale: const Locale('ar'),
        color: Colors.black);
  }

  static TextStyle aimriBold22(BuildContext context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 22),
        height: 2,
        fontFamily: AppFonst.amiri,
        fontWeight: FontWeight.w700,
        locale: const Locale('ar'),
        color: Colors.black);
  }

  static TextStyle aimriBold18(BuildContext context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 18),
        height: 2,
        fontFamily: AppFonst.amiri,
        fontWeight: FontWeight.w700,
        locale: const Locale('ar'),
        color: Colors.black);
  }

  static TextStyle aimriRegualr18(BuildContext context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 18),
        fontFamily: AppFonst.amiri,
        fontWeight: FontWeight.w400,
        locale: const Locale('ar'),
        color: Colors.black);
  }

  static TextStyle scheherazadeSemiBold20(BuildContext context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 20),
        fontFamily: AppFonst.scheherazade,
        fontWeight: FontWeight.w600,
        color: Colors.black);
  }

  static TextStyle scheherazadeSemiBold24(BuildContext context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 24),
        fontFamily: AppFonst.scheherazade,
        fontWeight: FontWeight.w600,
        color: Colors.black);
  }

  static TextStyle scheherazadeMedium16(BuildContext context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        fontFamily: AppFonst.scheherazade,
        fontWeight: FontWeight.w500,
        color: Colors.black);
  }

  static TextStyle scheherazadeMedium12(BuildContext context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 12),
        fontFamily: AppFonst.scheherazade,
        fontWeight: FontWeight.w500,
        color: AppColor.deepOrange);
  }

  static TextStyle scheherazadeMedium24(BuildContext context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 24),
        fontFamily: AppFonst.scheherazade,
        fontWeight: FontWeight.w500,
        color: Colors.white);
  }

  static TextStyle digetalBold100(BuildContext context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 100),
        fontFamily: AppFonst.digital,
        fontWeight: FontWeight.w700,
        color: Colors.black);
  }
}

double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  double width = MediaQuery.of(context).orientation == Orientation.portrait
      ? MediaQuery.sizeOf(context).width
      : MediaQuery.sizeOf(context).height;
  double mobilefontScaleFactor = width / 400;
  double responsiveFontSize = mobilefontScaleFactor * fontSize;
  return responsiveFontSize.clamp(
      responsiveFontSize * 0.8, responsiveFontSize * 1.2);
}
