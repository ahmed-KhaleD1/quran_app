import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran_app/core/functions/navigation.dart';
import 'package:quran_app/core/router/app_router.dart';
import 'package:quran_app/core/widgets/shimmers/quran_card_shimmer.dart';
import 'package:quran_app/features/moshaf/data/models/sorah/sorah.dart';
import 'package:quran_app/features/moshaf/presentation/view_model/cubit/moshaf_cubit.dart';
import 'package:quran_app/features/moshaf/presentation/widgets/moshaf_sorh_widget.dart';

class MoshafListView extends StatelessWidget {
  const MoshafListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MoshafCubit, MoshafState>(
      builder: (context, state) {
        if (state is MoshafSuccess) {
          final List<SorahModel> moshafList = state.sorahList;
          return ListView.separated(
            itemCount: moshafList.length,
            physics: const BouncingScrollPhysics(),
            separatorBuilder: (context, index) {
              return Divider(
                height: 1,
                thickness: 0.5,
                color: Colors.grey.shade300,
                indent: 20,
                endIndent: 20,
              );
            },
            itemBuilder: (context, index) {
              return MoshafSorhWidget(
                sorah: state.sorahList[index],
                onTap: () {
                  customNav(context,
                      path: AppRouter.sorahView, extra: moshafList[index]);
                },
              );
            },
          );
        } else if (state is MoshafFailure) {
          print('fail');
          return const SizedBox();
        } else {
          return const QuranCardShimmer();
        }
      },
    );
  }
}
