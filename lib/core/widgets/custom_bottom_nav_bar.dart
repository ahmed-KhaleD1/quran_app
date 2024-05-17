import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quran_app/core/utils/app_assets.dart';
import 'package:quran_app/core/utils/app_colors.dart';
import 'package:quran_app/core/widgets/custom_bottom_nav_bar_item.dart';
import 'package:quran_app/features/azkar/presentation/view/azkar_view.dart';
import 'package:quran_app/features/home/presentation/view_model/home_cubit.dart';
import 'package:quran_app/features/home/presentation/view_model/home_state.dart';
import 'package:quran_app/features/moshaf/presentation/view/moshaf_view.dart';
import 'package:quran_app/features/sabhuh/persentation/views/sabhuh_view.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});
  @override
  Widget build(BuildContext context) {
    final homeCibit = BlocProvider.of<HomeCubit>(context);

    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return BottomAppBar(
            height: 50,
            shadowColor: Colors.grey[400],
            surfaceTintColor: Colors.white,
            elevation: 25,
            notchMargin: 10,
            shape: const CircularNotchedRectangle(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomBottomNavigationBarItem(
                    iconAsset: Assets.imagesHomeMoshaf,
                    color: homeCibit.currentTap == 1
                        ? AppColor.deepPurple
                        : AppColor.lightGrey,
                    onTap: () {
                      homeCibit.updateCurrentPage(
                          currentPage: const MoshafView(),
                          index: 1,
                          appbarTitle: 'القرآن الكريم');
                    }),
                CustomBottomNavigationBarItem(
                    iconAsset: Assets.imagesHomePray,
                    color: homeCibit.currentTap == 2
                        ? AppColor.deepPurple
                        : AppColor.lightGrey,
                    onTap: () {
                      homeCibit.updateCurrentPage(
                          currentPage: const AzkarView(),
                          index: 2,
                          appbarTitle: 'أذكار');
                    }),
                const SizedBox(
                  width: 32,
                ),
                CustomBottomNavigationBarItem(
                    iconAsset: Assets.imagesHomeSebha,
                    color: homeCibit.currentTap == 4
                        ? AppColor.deepPurple
                        : AppColor.lightGrey,
                    onTap: () {
                      homeCibit.updateCurrentPage(
                          currentPage: const SabhuhView(),
                          index: 4,
                          appbarTitle: 'السبحة');
                    }),
                const Icon(
                  FontAwesomeIcons.bars,
                  color: AppColor.lightGrey,
                ),
              ],
            ));
      },
    );
  }
}
