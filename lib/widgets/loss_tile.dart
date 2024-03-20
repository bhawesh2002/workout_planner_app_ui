import 'package:flutter/material.dart';
import 'package:workout_planner_app/theme/app_colors.dart';
import 'package:workout_planner_app/widgets/workout_progress_indicator.dart';

class LossTile extends StatelessWidget {
  final String title;
  final String amount;
  final String unit;
  final String change;
  final num percentage;
  const LossTile(
      {super.key,
      required this.title,
      required this.amount,
      required this.unit,
      required this.change,
      required this.percentage});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: Colors.white.withOpacity(0.15),
      ),
      padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.03,
          horizontal: MediaQuery.of(context).size.width * 0.05),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            children: [
              Positioned.fill(
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontSize: constraints.maxHeight * 0.2,
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                ),
              ),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: RichText(
                    text: TextSpan(
                      text: amount,
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontSize: constraints.maxHeight * 0.4,
                            fontWeight: FontWeight.w600,
                          ),
                      children: [
                        TextSpan(
                            text: " $unit",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                    fontSize: constraints.maxHeight * 0.2)),
                        TextSpan(
                          text: " $change",
                          style:
                              Theme.of(context).textTheme.titleMedium?.copyWith(
                                    fontSize: constraints.maxHeight * 0.165,
                                    color: AppColors.green,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                    width: constraints.maxHeight * 1,
                    height: constraints.maxHeight * 1,
                    child: WorkoutProgressIndicator(
                      progress: percentage.toDouble(),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
