import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:landing_page/reusedWidgets/sized_text.dart';

class OnboardingFeature extends StatelessWidget {
  final List<InlineSpan> paragraph;
  final double width;
  final Color color;
  const OnboardingFeature(
      {super.key,
      required this.paragraph,
      required this.width,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
      SizedText(
          width: width * 0.5,
          text: RichText(
              textAlign: TextAlign.right,
              text: TextSpan(
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: color,
                    fontSize: 17,
                    height: 1.5),
                children: paragraph,
              ))),
      Container(width: width * 0.5, height: 1, color: color),
    ]);
  }
}
