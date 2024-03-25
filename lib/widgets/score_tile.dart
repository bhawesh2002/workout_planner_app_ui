import 'package:flutter/material.dart';
import 'package:workout_planner_app/theme/app_colors.dart';

class ScoreTile extends StatelessWidget {
  final String amount;
  final String unit;
  final String target;
  final double completion;
  final bool isSelected;
  const ScoreTile({
    super.key,
    required this.amount,
    required this.unit,
    required this.target,
    required this.completion,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.12,
      width: width * 0.9,
      decoration: BoxDecoration(
        gradient: isSelected
            ? AppColors.primaryGradient
            : LinearGradient(colors: [
                Colors.white.withOpacity(0.18),
                Colors.white.withOpacity(0.18)
              ]),
        borderRadius: BorderRadius.circular(width * 0.08),
      ),
      padding: EdgeInsets.only(
        top: height * 0.035,
        bottom: height * 0.02,
        left: width * 0.07,
        right: width * 0.07,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            flex: 2,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                    text: amount,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontSize: height * 0.03,
                          fontWeight: FontWeight.bold,
                        ),
                    children: [
                      TextSpan(
                        text: " $unit",
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                      ),
                    ],
                  ),
                ),
                Text(
                  "Target: $target $unit",
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontSize: height * 0.015,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.center,
                    child: LinearProgressIndicator(
                      value: 1,
                      color: Colors.black.withOpacity(0.6),
                      minHeight: 4,
                      borderRadius: BorderRadius.circular(width),
                    ),
                  ),
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.center,
                    child: LinearProgressIndicator(
                      value: completion / 100,
                      color: isSelected ? Colors.black : AppColors.primary,
                      backgroundColor: Colors.transparent,
                      minHeight: 8,
                      borderRadius: BorderRadius.circular(width),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
