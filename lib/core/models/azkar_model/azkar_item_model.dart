import 'package:flutter/material.dart';
import 'package:quran_app/core/models/azkar_model/all_azkar_model.dart';

class AzkarItemModel {
  final Color backgroundColor;
  final AllAzkarModel azkar;
  final String image, title;

  AzkarItemModel(
      {required this.backgroundColor,
      required this.title,
      required this.azkar,
      required this.image});
}
