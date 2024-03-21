import 'package:flutter/material.dart';
import 'package:workout_planner_app/widgets/current_weight_card.dart';
import 'package:workout_planner_app/widgets/more_button.dart';

class OverallStatusPage extends StatelessWidget {
  const OverallStatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned.fill(
              top: height * 0.03,
              left: width * 0.065,
              child: const Align(
                alignment: Alignment.topLeft,
                child: MoreButton(),
              ),
            ),
            Positioned.fill(
              top: height * 0.05,
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  "Overall Status",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ),
            Positioned.fill(
              top: height * 0.03,
              right: width * 0.065,
              child: const Align(
                alignment: Alignment.topRight,
                child: MoreButton(),
              ),
            ),
            //CurrentWeightCard
            Positioned.fill(
              bottom: height * 0.2,
              child: const Align(
                alignment: Alignment.center,
                child: CurrentWeightCard(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
