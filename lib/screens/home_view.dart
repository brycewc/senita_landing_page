import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:landing_page/screens/deeper_connections.dart';
import 'package:landing_page/screens/increase_retention.dart';
import 'package:landing_page/screens/jumbotron_widget.dart';
import 'package:landing_page/screens/onboarding_features_view.dart';
import 'package:landing_page/screens/statistics_view.dart';
import 'package:landing_page/screens/we_are_senita_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: const <Widget>[
      Jumbotron(),
      StatisticsView(),
      WeAreSenita(),
      IncreaseRetentionView(),
      DeeperConnectionsView(),
      OnboardingFeaturesView()
    ]));
  }
}
