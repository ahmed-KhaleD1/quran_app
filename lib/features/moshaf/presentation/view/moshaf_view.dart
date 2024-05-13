import 'package:flutter/material.dart';
import 'package:quran_app/features/moshaf/presentation/widgets/custom_tab_bar.dart';
import 'package:quran_app/features/moshaf/presentation/widgets/custom_tab_bar_view.dart';

class MoshafView extends StatefulWidget {
  const MoshafView({super.key});

  @override
  State<MoshafView> createState() => _MoshafViewState();
}

class _MoshafViewState extends State<MoshafView>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            CustomTabBar(tabController: tabController),
            Expanded(
              child: CustomTabBarView(tabController: tabController),
            )
          ],
        ));
  }
}
