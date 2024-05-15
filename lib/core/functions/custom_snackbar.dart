import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void customToast({required String message, required Color backgroundColor}) {
  Fluttertoast.showToast(
    msg: message,
    backgroundColor: backgroundColor,
    gravity: ToastGravity.BOTTOM,
  );
}
