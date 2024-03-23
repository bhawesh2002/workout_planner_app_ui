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
        color: isSelected ? AppColors.primary : Colors.white.withOpacity(0.2),
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                text: TextSpan(
                  text: amount,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontSize: height * 0.03,
                        fontWeight: FontWeight.w500,
                      ),
                  children: [
                    TextSpan(
                      text: unit,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                  ],
                ),
              ),
              Text(
                "Target: $target $unit",
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontSize: height * 0.015,
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
                        minHeight: 10,
                        borderRadius: BorderRadius.circular(width),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
