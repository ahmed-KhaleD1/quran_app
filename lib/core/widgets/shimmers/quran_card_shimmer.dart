import 'package:flutter/material.dart';

import 'package:quran_app/core/widgets/custom_number_shape.dart';
import 'package:shimmer/shimmer.dart';

class QuranCardShimmer extends StatelessWidget {
  const QuranCardShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 10,
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
        return Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 6),
            child: Row(
              children: [
                const CustomNumberShape(
                  number: '',
                ),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 120,
                      height: 20,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Container(
                      width: 100,
                      height: 12,
                      color: Colors.white,
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                  width: 100,
                  height: 20,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
