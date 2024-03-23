import 'package:flutter/material.dart';
import 'package:workout_planner_app/pages/overall_status_page.dart';
import 'package:workout_planner_app/theme/app_colors.dart';
import 'package:workout_planner_app/widgets/headline_text.dart';
import 'package:workout_planner_app/widgets/loss_tile.dart';
import 'package:workout_planner_app/widgets/more_button.dart';
import 'package:workout_planner_app/widgets/user_avatar.dart';
import 'package:workout_planner_app/widgets/workout_status_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            //More icon button
            Positioned.fill(
              top: height * 0.03,
              left: width * 0.065,
              child: Align(
                alignment: Alignment.topLeft,
                child: AppBarButton(
                  icon: Icons.more_horiz,
                  onTap: () {},
                ),
              ),
            ),
            //user avatar
            Positioned.fill(
              top: height * 0.025,
              right: width * 0.05,
              child: const Align(
                alignment: Alignment.topRight,
                child: UserAvatar(),
              ),
            ),
            //Headline
            Positioned.fill(
              top: height * 0.12,
              left: width * 0.065,
              child: const Align(
                  alignment: Alignment.topLeft, child: HeadlineText()),
            ),
            //workout status card
            Positioned.fill(
              bottom: height * 0.15,
              child: const Align(
                alignment: Alignment.center,
                child: WorkoutStatusCard(),
              ),
            ),
            //Overall Status
            Positioned.fill(
              top: height * 0.225,
              left: width * 0.065,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Overall Status",
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.normal, fontSize: width * 0.04),
                ),
              ),
            ),
            //See All
            Positioned.fill(
              top: height * 0.225,
              right: width * 0.065,
              child: Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const OverallStatusPage()));
                  },
                  child: Text(
                    "See All",
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: width * 0.028,
                          color: AppColors.primary,
                        ),
                  ),
                ),
              ),
            ),
            //LossTile(s)
            Positioned.fill(
              bottom: height * 0.020,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  height: height * 0.30,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: height * 0.14,
                          child: const LossTile(
                            title: "Weight Loss",
                            amount: '8.9',
                            unit: 'Kg',
                            change: "+1.2%",
                            percentage: 65,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        SizedBox(
                          height: height * 0.14,
                          child: const LossTile(
                            title: "Calories Loss",
                            amount: '1.280',
                            unit: 'Kcal',
                            change: "+0.8%",
                            percentage: 48,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
