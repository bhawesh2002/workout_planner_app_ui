import 'package:flutter/material.dart';
import 'package:workout_planner_app/theme/app_colors.dart';

class WorkoutStatusCard extends StatelessWidget {
  const WorkoutStatusCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.28,
      decoration: BoxDecoration(
        borderRadius:
            BorderRadius.circular(MediaQuery.of(context).size.width * 0.085),
        color: AppColors.primary,
      ),
      padding: EdgeInsets.symmetric(
        vertical: MediaQuery.of(context).size.height * 0.02,
        horizontal: MediaQuery.of(context).size.width * 0.04,
      ),
      child: LayoutBuilder(builder: (context, constraints) {
        return Column(
          children: [
            titleRow(context, constraints),
            SizedBox(
              height: constraints.maxHeight * 0.08,
            ),
            Expanded(
              child: SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    exercises(context, constraints,
                        color: Colors.red,
                        exerciseName: "Single-leg deadlifts",
                        reps: "30",
                        units: "x4"),
                    exercises(context, constraints,
                        color: Colors.cyan,
                        exerciseName: "Squat",
                        reps: "25",
                        units: "x4"),
                    exercises(context, constraints,
                        color: Colors.yellow,
                        exerciseName: "Treadmill",
                        reps: "10",
                        units: "mins"),
                    exercises(context, constraints,
                        color: Colors.blue,
                        exerciseName: "Dumbell",
                        reps: "15",
                        units: "x4"),
                  ],
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}

Row titleRow(BuildContext context, BoxConstraints constraints) {
  return Row(
    children: [
      //workout icon
      Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white.withOpacity(0.3),
        ),
        padding: EdgeInsets.all(constraints.maxWidth * 0.05),
        child: Icon(
          Icons.whatshot,
          color: Colors.white,
          size: constraints.maxWidth * 0.06,
        ),
      ),
      SizedBox(
        width: constraints.maxWidth * 0.02,
      ),
      RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "918",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(fontSize: constraints.maxWidth * 0.08),
            ),
            TextSpan(
              text: " cal",
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontSize: constraints.maxWidth * 0.05,
                  fontWeight: FontWeight.w600),
            ),
            TextSpan(
              text: " /1024 cal",
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontSize: constraints.maxWidth * 0.04,
                    fontWeight: FontWeight.w100,
                  ),
            ),
          ],
        ),
      ),
    ],
  );
}

Container exercises(
  BuildContext context,
  BoxConstraints constraints, {
  required String exerciseName,
  required String reps,
  required String units,
  required Color color,
}) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: constraints.maxWidth * 0.05),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          child: Row(
            children: [
              Container(
                width: constraints.maxWidth * 0.006,
                height: constraints.maxHeight * 0.06,
                color: color,
              ),
              SizedBox(
                width: constraints.maxWidth * 0.05,
              ),
              SizedBox(
                width: constraints.maxWidth * 0.6,
                child: Text(
                  exerciseName,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(fontSize: constraints.maxWidth * 0.035),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: constraints.maxWidth * 0.175,
          child: RichText(
            textAlign: TextAlign.start,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            text: TextSpan(
              text: reps,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(fontSize: constraints.maxWidth * 0.04),
              children: [
                TextSpan(
                  text: units,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontSize: constraints.maxWidth * 0.035,
                        fontWeight: FontWeight.w100,
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
