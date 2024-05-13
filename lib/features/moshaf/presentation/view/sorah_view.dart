import 'package:flutter/material.dart';
import 'package:quran_app/features/moshaf/data/models/sorah/sorah.dart';
import 'package:quran_app/features/moshaf/presentation/widgets/custom_appbar.dart';
import 'package:quran_app/features/moshaf/presentation/widgets/sorah_view_body.dart';

class SorahView extends StatelessWidget {
  const SorahView({super.key, required this.sorah});
  final SorahModel sorah;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppbar(sorah: sorah),
      body: SorahViewBody(sorah: sorah),
    );
  }
}
