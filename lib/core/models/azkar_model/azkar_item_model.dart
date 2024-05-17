import 'package:flutter/material.dart';
import 'package:quran_app/core/models/azkar_model/all_azkar_model.dart';

class AzkarItemModel {
  final Color? backgroundColor;
  final AllAzkarModel azkar;
  final String? image;
  final String title;

  AzkarItemModel(
      {this.backgroundColor,
      required this.title,
      required this.azkar,
      this.image});
}
