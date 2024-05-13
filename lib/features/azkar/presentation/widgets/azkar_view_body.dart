import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran_app/core/models/azkar_model/azkar_item_model.dart';
import 'package:quran_app/features/azkar/presentation/view_model/azkar_cubit.dart';
import 'package:quran_app/features/azkar/presentation/view_model/azkar_state.dart';
import 'package:quran_app/features/azkar/presentation/widgets/azkar_card_list_view.dart';

class AzkarViewBody extends StatelessWidget {
  const AzkarViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
      child: BlocBuilder<AzkarCubit, AzkarState>(
        builder: (context, state) {
          if (state is AzkarSuccess) {
            final List<AzkarItemModel> allAzkarItem = state.azkarItemModel;
            return AzkarCardListView(allAzkarItem: allAzkarItem);
          } else if (state is AzkarFailure) {
            return const SizedBox();
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
