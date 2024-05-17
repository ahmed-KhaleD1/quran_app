import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class PrayListShimmer extends StatelessWidget {
  const PrayListShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        separatorBuilder: (context, index) {
          if (index == 4) {
            return const SizedBox();
          }
          return const SizedBox(width: 8);
        },
        itemBuilder: (context, index) {
          return Shimmer.fromColors(
            baseColor: Colors.grey[300]!,
            highlightColor: Colors.grey[100]!,
            child: Container(
              height: 75,
              width: 69,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: const LinearGradient(
                  colors: [Color(0xffD9CDFE), Color(0xffF5F4F6)],
                  stops: [0.25, 1],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
