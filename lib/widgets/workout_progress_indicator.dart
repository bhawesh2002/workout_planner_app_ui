import 'package:flutter/material.dart';
import 'package:workout_planner_app/theme/app_colors.dart';

class WorkoutProgressIndicator extends StatelessWidget {
  final double progress;
  const WorkoutProgressIndicator({super.key, required this.progress});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Stack(
        children: [
          Positioned.fill(
            child: Align(
              alignment: Alignment.centerRight,
              child: SizedBox(
                width: constraints.maxWidth,
                height: constraints.maxHeight,
                child: const CircularProgressIndicator(
                  value: 1,
                  strokeWidth: 4,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.centerRight,
              child: SizedBox(
                height: constraints.maxHeight,
                width: constraints.maxWidth,
                child: CircularProgressIndicator(
                  value: progress.toDouble() / 100,
                  strokeWidth: 7,
                  color: AppColors.primary,
                  strokeCap: StrokeCap.round,
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "${progress.toString().split('.')[0]}%",
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.normal,
                    fontSize: constraints.maxHeight * 0.2),
              ),
            ),
          ),
        ],
      );
    });
  }
}
