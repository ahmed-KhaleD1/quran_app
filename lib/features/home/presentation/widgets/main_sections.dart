import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quran_app/core/utils/app_assets.dart';

import 'package:quran_app/core/utils/app_styles.dart';
import 'package:quran_app/features/home/presentation/view_model/home_cubit.dart';
import 'package:quran_app/features/home/presentation/widgets/section_widget.dart';
import 'package:quran_app/features/moshaf/presentation/view/moshaf_view.dart';

class MainSections extends StatelessWidget {
  const MainSections({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          'الأقسام الرئيسية',
          style: AppStyles.kufiBold20(context),
        ),
        const SizedBox(
          height: 12,
        ),
        SectionWidget(
          onTap: () {
            BlocProvider.of<Homecubit>(context).updateCurrentPage(
                currentPage: const MoshafView(),
                index: 4,
                appbarTitle: 'القرآن الكريم');
          },
          height: 100,
          backgroundImage: Assets.imagesHomeMainSectionsReading2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'القرآن الكريم',
                style: AppStyles.splartBold42(context),
              ),
              const SizedBox(
                width: 8,
              ),
              SvgPicture.asset(Assets.imagesHomeMainSectionsReading,
                  height: 70),
            ],
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        SizedBox(
          height: 85,
          child: Row(
            children: [
              Expanded(
                child: SectionWidget(
                  onTap: () {},
                  height: 85,
                  backgroundImage: Assets.imagesHomeMainSectionsBead,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        Assets.imagesHomeMainSectionsAzkar,
                        height: 40,
                      ),
                      Text(
                        'أذكار',
                        style: AppStyles.splartBold24(context),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: SectionWidget(
                  onTap: () {},
                  height: 85,
                  backgroundImage: Assets.imagesHomeMainSectionsMuslim,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        Assets.imagesHomeMainSectionsPray,
                        height: 40,
                      ),
                      Text(
                        'أدعية',
                        style: AppStyles.splartBold24(context),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        SizedBox(
          height: 85,
          child: Row(
            children: [
              Expanded(
                child: SectionWidget(
                  onTap: () {},
                  height: 85,
                  backgroundImage: Assets.imagesHomeMainSectionsMosque,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        Assets.imagesHomeMainSectionsShalat,
                        height: 40,
                      ),
                      Text(
                        'مواقيت الصلاة',
                        style: AppStyles.splartBold24(context),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: SectionWidget(
                  onTap: () {},
                  height: 85,
                  backgroundImage: Assets.imagesHomeMainSectionsKabah,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        Assets.imagesHomeMainSectionsLocation,
                        height: 40,
                      ),
                      Text(
                        'إتجاه القبلة',
                        style: AppStyles.splartBold24(context),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
