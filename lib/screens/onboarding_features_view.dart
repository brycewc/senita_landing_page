import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:landing_page/reusedWidgets/onboarding_features_item.dart';
import 'package:landing_page/reusedWidgets/sized_text.dart';

class OnboardingFeaturesView extends StatelessWidget {
  const OnboardingFeaturesView({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
        color: const Color.fromRGBO(255, 251, 245, 1),
        child: Column(
          children: [
            SizedBox(height: width * 0.075),
            SizedText(
                width: width * 0.6,
                text: const Text('New Employee\nOnboarding Features',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromRGBO(200, 162, 135, 1),
                        fontSize: 42,
                        height: 1.25))),
            SizedBox(height: width * 0.05),
            Row(children: [
              Column(children: [
                OnboardingFeature(
                    paragraph: [
                      const TextSpan(
                          text: 'Enduring Connections:',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      WidgetSpan(child: SizedBox(width: width * 0.0075)),
                      const TextSpan(
                        text:
                            'data-backed\npairings support new employees in\ncreating lasting relationships with a\ndiverse set of collegues',
                      )
                    ],
                    width: width * 0.75,
                    color: const Color.fromRGBO(77, 63, 40, 1)),
                SizedBox(height: width * 0.025),
                OnboardingFeature(
                    paragraph: const [
                      TextSpan(
                          text: 'No one falls through the cracks:\n',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(
                        text:
                            'Measure how well new employees are\nbeing incorporated',
                      )
                    ],
                    width: width * 0.75,
                    color: const Color.fromRGBO(77, 63, 40, 1)),
                SizedBox(height: width * 0.025),
                OnboardingFeature(
                    paragraph: [
                      const TextSpan(
                          text: 'Real-time insight',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      WidgetSpan(child: SizedBox(width: width * 0.0075)),
                      const TextSpan(
                        text:
                            'into how new\nemployees are feeling during each\nstage of onboarding',
                      )
                    ],
                    width: width * 0.75,
                    color: const Color.fromRGBO(77, 63, 40, 1))
              ]),
              Image.asset('images/thermometer.png', width: width * 0.1)
            ])
          ],
        ));
  }
}
