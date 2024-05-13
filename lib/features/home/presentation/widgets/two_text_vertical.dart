import 'package:flutter/material.dart';

class TwoTextVertical extends StatelessWidget {
  const TwoTextVertical({
    super.key,
    required this.text1,
    required this.text2,
    required this.style1,
    required this.style2,
  });
  final String text1, text2;
  final TextStyle style1, style2;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          text1,
          style: style1,
        ),
        Text(
          text2,
          style: style2,
        )
      ],
    );
  }
}
