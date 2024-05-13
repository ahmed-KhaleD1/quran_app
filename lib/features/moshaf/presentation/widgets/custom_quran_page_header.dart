import 'package:flutter/material.dart';
import 'package:quran_app/core/utils/app_assets.dart';
import 'package:quran_app/core/utils/app_colors.dart';
import 'package:quran_app/core/utils/app_styles.dart';
import 'package:quran_app/core/widgets/custom_page_number_widget.dart';

class CustomQuranPageHeader extends StatelessWidget {
  const CustomQuranPageHeader({
    super.key,
    required this.pageNumber,
    required this.juz,
  });
  final String pageNumber, juz;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 240,
                height: 30,
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                      blurStyle: BlurStyle.outer,
                      offset: const Offset(0, 20),
                      blurRadius: 25,
                      color: Colors.black.withOpacity(0.1)),
                ]),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 280,
                height: 30,
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                      offset: const Offset(0, -25),
                      blurRadius: 25,
                      color: Colors.black.withOpacity(0.1)),
                ]),
              ),
            ),
            Positioned.fill(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      juz,
                      style: AppStyles.aimriRegualr18(context),
                    ),
                    CustomPageNumberWidget(pageNumber: pageNumber),
                    Image.asset(
                      Assets.imagesAddBookmark,
                      color: AppColor.deepOrange,
                      width: 30,
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
