import 'package:flutter/material.dart';
import 'package:quran_app/features/moshaf/data/models/sorah/ayah.dart';
import 'package:quran_app/features/moshaf/presentation/widgets/bottom_sheet_content.dart';

void showTransparentBottomSheet(
    BuildContext context, Ayah ayah, String sorahName) {
  showBottomSheet(
    backgroundColor: Colors.transparent,
    context: context,
    builder: (context) {
      return Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                const Color.fromRGBO(66, 76, 112, 0.7),
                const Color(0xffC1C4CE).withOpacity(0.5)
              ])),
          child: BottomSheetContent(
            ayah: ayah,
            sorahName: sorahName,
          ));
    },
  );
}
