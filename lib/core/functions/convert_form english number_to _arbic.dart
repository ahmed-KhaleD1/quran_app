import 'package:quran_app/constants.dart';

String convertFormEnglishNumberToArabic(int number) {
  String strNum = number.toString();
  int len = strNum.length;
  String arabicNumber = '';
  for (int i = 0; i < len; i++) {
    arabicNumber += numberMap[strNum[i]]!;
  }
  return arabicNumber;
}
