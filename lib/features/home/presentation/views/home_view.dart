import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran_app/core/utils/app_colors.dart';
import 'package:quran_app/core/utils/app_strings.dart';
import 'package:quran_app/core/utils/app_styles.dart';
import 'package:quran_app/core/widgets/buttons/custom_gradient_button.dart';
import 'package:quran_app/core/widgets/custom_bottom_nav_bar.dart';
import 'package:quran_app/features/home/presentation/view_model/home_cubit.dart';
import 'package:quran_app/features/home/presentation/view_model/home_state.dart';
import 'package:quran_app/features/home/presentation/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final homeCubit = BlocProvider.of<HomeCubit>(context);
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              homeCubit.appbarTitle,
              style: AppStyles.kufiBold24(context)
                  .copyWith(color: AppColor.deepPurple),
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: CustomGradientButton(
            isActive: homeCubit.currentTap == 3 ? true : false,
            onTap: () {
              homeCubit.updateCurrentPage(
                  currentPage: const HomeViewBody(),
                  index: 3,
                  appbarTitle: AppStrings.homeAppBarTitle);
            },
          ),
          bottomNavigationBar: const CustomBottomNavigationBar(),
          body: homeCubit.currentScreen,
        );
      },
    );
  }
}
