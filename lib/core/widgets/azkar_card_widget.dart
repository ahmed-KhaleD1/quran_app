import 'package:flutter/cupertino.dart';
import 'package:quran_app/core/utils/app_styles.dart';

class AzkarCardWidget extends StatelessWidget {
  const AzkarCardWidget(
      {super.key,
      required this.image,
      required this.title,
      required this.backgroundColor,
      required this.onTap});
  final String image, title;
  final Color backgroundColor;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 110,
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: const BorderRadius.all(Radius.circular(15))),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 16, bottom: 16),
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    title,
                    style: AppStyles.kufiBold20(context),
                  ),
                ),
              ),
              Expanded(
                child: Image.asset(
                  image,
                ),
              ),
            ]),
      ),
    );
  }
}
