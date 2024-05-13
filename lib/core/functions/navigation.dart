import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void customReplacementNav(BuildContext context, {required String path}) {
  GoRouter.of(context).pushReplacement(path);
}

void customNav(BuildContext context, {required String path, Object? extra}) {
  GoRouter.of(context).push(path, extra: extra);
}
