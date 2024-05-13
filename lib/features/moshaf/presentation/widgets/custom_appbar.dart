import 'package:flutter/material.dart';
import 'package:quran_app/features/moshaf/data/models/sorah/sorah.dart';
import 'package:quran_app/features/moshaf/presentation/widgets/custom_app_bar_title.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final SorahModel sorah;

  const CustomAppbar({super.key, required this.sorah});
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 5);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 5,
            blurRadius: 8,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: AppBar(
          centerTitle: true,
          title: CustomAppbarTitle(
              number: sorah.number.toString(), title: sorah.name)),
    );
  }
}
