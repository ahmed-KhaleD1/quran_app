import 'package:flutter/material.dart';
import 'package:quran_app/core/utils/app_styles.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: () {
        Navigator.of(context).pop();
      },
      child: Ink(
        height: 35,
        width: 112,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xffB988D7),
        ),
        child: Center(
            child: Text('إغلاق',
                style: AppStyles.kufiMedium14(context)
                    .copyWith(color: Colors.white))),
      ),
    );
  }
}
