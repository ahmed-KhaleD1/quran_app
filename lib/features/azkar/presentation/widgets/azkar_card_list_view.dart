import 'package:flutter/material.dart';
import 'package:quran_app/core/functions/navigation.dart';
import 'package:quran_app/core/router/app_router.dart';
import 'package:quran_app/core/models/azkar_model/azkar_item_model.dart';
import 'package:quran_app/features/azkar/presentation/widgets/azkar_card_widget.dart';

class AzkarCardListView extends StatelessWidget {
  const AzkarCardListView({
    super.key,
    required this.allAzkarItem,
  });

  final List<AzkarItemModel> allAzkarItem;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      separatorBuilder: (context, index) => const SizedBox(
        height: 16,
      ),
      itemCount: allAzkarItem.length,
      itemBuilder: (context, index) {
        return AzkarCardWidget(
            onTap: () {
              customNav(context,
                  path: AppRouter.azkarDetailsView, extra: allAzkarItem[index]);
            },
            image: allAzkarItem[index].image,
            title: allAzkarItem[index].title,
            backgroundColor: allAzkarItem[index].backgroundColor);
      },
    );
  }
}
