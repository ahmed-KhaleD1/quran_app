import 'package:flutter/material.dart';
import 'package:quran_app/features/moshaf/presentation/widgets/moshaf_list_view.dart';

class CustomTabBarView extends StatelessWidget {
  const CustomTabBarView({super.key, required this.tabController});
  final TabController tabController;
  @override
  Widget build(BuildContext context) {
    return TabBarView(controller: tabController, children: const [
      Column(
        children: [
          SizedBox(
            height: 16,
          ),
          Expanded(child: MoshafListView()),
        ],
      ),
      Text('dsaggh')
    ]);
  }
}
