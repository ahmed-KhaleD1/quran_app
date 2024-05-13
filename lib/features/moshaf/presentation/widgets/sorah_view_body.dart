import 'package:flutter/material.dart';
import 'package:quran_app/features/moshaf/data/models/sorah/sorah.dart';
import 'package:quran_app/features/moshaf/presentation/widgets/custom_quran_page_header.dart';
import 'package:quran_app/features/moshaf/presentation/widgets/sorah_info_card.dart';
import 'package:quran_app/features/moshaf/presentation/widgets/sorah_list_view.dart';

class SorahViewBody extends StatelessWidget {
  const SorahViewBody({super.key, required this.sorah});
  final SorahModel sorah;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 16,
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SorahInfoCard(
              sorah: sorah,
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 24,
          ),
        ),
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: CustomQuranPageHeader(
              juz: 'الجزءالاول',
              pageNumber: '65',
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 24,
          ),
        ),
        SliverToBoxAdapter(child: SorahListView(sorah: sorah))
      ],
    );
  }
}
