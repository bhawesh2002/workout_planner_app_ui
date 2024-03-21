import 'package:flutter/material.dart';
import 'package:workout_planner_app/theme/app_colors.dart';
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
            Positioned.fill(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  width: width * 0.9,
                  height: height * 0.3,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          height: height * 0.12,
                          width: width * 0.9,
                          decoration: BoxDecoration(
                            color: AppColors.primary,
                            borderRadius: BorderRadius.circular(width * 0.08),
                          ),
                          padding: EdgeInsets.only(
                            top: height * 0.035,
                            bottom: height * 0.02,
                            left: width * 0.065,
                            right: width * 0.065,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      text: "1.280",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleLarge
                                          ?.copyWith(
                                            fontSize: height * 0.03,
                                            fontWeight: FontWeight.w500,
                                          ),
                                      children: [
                                        TextSpan(
                                          text: " Kcal",
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleMedium
                                              ?.copyWith(
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    "Target: 2,500 kcal",
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleLarge
                                        ?.copyWith(
                                          fontSize: height * 0.01,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ],
                              ),
                              Expanded(
                                child: SizedBox(
                                  child: Stack(
                                    children: [
                                      Positioned.fill(
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: LinearProgressIndicator(
                                            value: 1,
                                            color: Colors.white,
                                            minHeight: 3,
                                            borderRadius:
                                                BorderRadius.circular(width),
                                          ),
                                        ),
                                      ),
                                      Positioned.fill(
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: LinearProgressIndicator(
                                            value: 0.6,
                                            color: Colors.black,
                                            backgroundColor: Colors.transparent,
                                            minHeight: 10,
                                            borderRadius:
                                                BorderRadius.circular(width),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Container(
                          height: height * 0.12,
                          width: width * 0.9,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(width * 0.08),
                          ),
                          padding: EdgeInsets.only(
                            top: height * 0.035,
                            bottom: height * 0.02,
                            left: width * 0.065,
                            right: width * 0.065,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      text: "1.725",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleLarge
                                          ?.copyWith(
                                            fontSize: height * 0.03,
                                            fontWeight: FontWeight.w500,
                                          ),
                                      children: [
                                        TextSpan(
                                          text: " Steps",
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleMedium
                                              ?.copyWith(
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    "Target: 8000 steps",
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleLarge
                                        ?.copyWith(
                                          fontSize: height * 0.01,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ],
                              ),
                              Expanded(
                                child: SizedBox(
                                  child: Stack(
                                    children: [
                                      Positioned.fill(
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: LinearProgressIndicator(
                                            value: 1,
                                            color: Colors.white,
                                            minHeight: 3,
                                            borderRadius:
                                                BorderRadius.circular(width),
                                          ),
                                        ),
                                      ),
                                      Positioned.fill(
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: LinearProgressIndicator(
                                            value: 0.6,
                                            color: AppColors.primary,
                                            backgroundColor: Colors.transparent,
                                            minHeight: 10,
                                            borderRadius:
                                                BorderRadius.circular(width),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
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
