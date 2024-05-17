import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quran_app/core/functions/navigation.dart';
import 'package:quran_app/core/router/app_router.dart';
import 'package:quran_app/core/utils/app_assets.dart';

import 'package:quran_app/core/utils/app_styles.dart';
import 'package:quran_app/features/home/data/models/main_section_model.dart';
import 'package:quran_app/features/home/presentation/view_model/home_cubit.dart';
import 'package:quran_app/features/home/presentation/widgets/section_widget.dart';
import 'package:quran_app/features/moshaf/presentation/view/moshaf_view.dart';
import 'package:quran_app/features/sabhuh/persentation/views/sabhuh_view.dart';

class MainSections extends StatelessWidget {
  const MainSections({super.key});
  final List<MainSectionModel> sectionList = const [
    MainSectionModel(
      title: 'أذكار',
      image: Assets.imagesHomeMainSectionsAzkar,
      backgroundImage: Assets.imagesHomeMainSectionsBead,
    ),
    MainSectionModel(
        title: 'أدعية',
        image: Assets.imagesHomeMainSectionsPray,
        backgroundImage: Assets.imagesHomeMainSectionsMuslim),
    MainSectionModel(
        title: 'مواقيت الصلاة',
        image: Assets.imagesHomeMainSectionsShalat,
        backgroundImage: Assets.imagesHomeMainSectionsMosque),
    MainSectionModel(
        title: 'إتجاه القبلة',
        image: Assets.imagesHomeMainSectionsLocation,
        backgroundImage: Assets.imagesHomeMainSectionsKabah)
  ];
  @override
  Widget build(BuildContext context) {
    final HomeCubit homeCubit = BlocProvider.of<HomeCubit>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'الأقسام الرئيسية',
          style: AppStyles.kufiBold20(context),
        ),
        const SizedBox(
          height: 12,
        ),
        Expanded(
          flex: 2,
          child: SectionWidget(
            onTap: () {
              homeCubit.updateCurrentPage(
                  currentPage: const MoshafView(),
                  index: 4,
                  appbarTitle: 'القرآن الكريم');
            },
            backgroundImage: Assets.imagesHomeMainSectionsReading2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  Assets.imagesHomeMainSectionsReading,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  'القرآن الكريم',
                  style: AppStyles.splartBold42(context),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Expanded(
          flex: 5,
          child: LayoutBuilder(
            builder: (context, constraints) {
              return GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 4,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: constraints.maxHeight / 2,
                  childAspectRatio: 2,
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, index) {
                  MainSectionModel model = sectionList[index];

                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: SectionWidget(
                        backgroundImage: model.backgroundImage,
                        onTap: () {
                          if (index == 0) {
                            homeCubit.updateCurrentPage(
                                currentPage: const SabhuhView(),
                                index: 1,
                                appbarTitle: 'السبحة');
                          } else if (index == 1) {
                            customNav(context, path: AppRouter.doaaView);
                          }
                        },
                        child: constraints.minHeight > 200
                            ? Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SvgPicture.asset(
                                    model.image,
                                    width: 25,
                                  ),
                                  Text(
                                    model.title,
                                    style: AppStyles.splartBold24(context),
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                ],
                              )
                            : Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SvgPicture.asset(
                                    model.image,
                                    width: 25,
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    model.title,
                                    style: AppStyles.splartBold24(context),
                                  ),
                                ],
                              )),
                  );
                },
              );
            },
          ),
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}
