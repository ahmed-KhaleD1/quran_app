import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran_app/core/functions/navigation.dart';
import 'package:quran_app/core/router/app_router.dart';
import 'package:quran_app/core/utils/app_assets.dart';
import 'package:quran_app/core/widgets/azkar_card_widget.dart';
import 'package:quran_app/features/doaa/presentation/view_model/doaa_cubit.dart';
import 'package:quran_app/features/doaa/presentation/view_model/doaa_state.dart';

class DoaaVieBody extends StatelessWidget {
  const DoaaVieBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DoaaCubit, DoaaState>(
      builder: (context, state) {
        if (state is DoaaSuccess) {
          return ListView(
            padding: const EdgeInsets.all(16),
            children: [
              AzkarCardWidget(
                  image: Assets.imagesDoaaQuran,
                  title: 'أدعية قرآنية',
                  backgroundColor: const Color(0xffFFC3CB),
                  onTap: () {
                    customNav(context,
                        path: AppRouter.azkarDetailsView,
                        extra: state.azkarList[0]);
                  }),
              const SizedBox(
                height: 16,
              ),
              AzkarCardWidget(
                  image: Assets.imagesDoaaDoaa,
                  title: 'أدعية الأنبياء',
                  backgroundColor: const Color(0xffFFF3E1),
                  onTap: () {
                    customNav(context,
                        path: AppRouter.azkarDetailsView,
                        extra: state.azkarList[1]);
                  })
            ],
          );
        } else if (state is DoaaFailure) {
          return const SizedBox();
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
