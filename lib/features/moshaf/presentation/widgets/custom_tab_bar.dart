import 'package:flutter/material.dart';
import 'package:quran_app/core/utils/app_styles.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({super.key, required this.tabController});
  final TabController tabController;
  @override
  Widget build(BuildContext context) {
    return TabBar(
        controller: tabController,
        indicatorSize: TabBarIndicatorSize.tab,
        tabs: [
          Tab(
            child: Text(
              'المصحف',
              style: AppStyles.kufiMedium20(context),
            ),
          ),
          Tab(
            child: Text(
              'الأجزاء',
              style: AppStyles.kufiMedium20(context),
            ),
          )
        ]);
  }
}
