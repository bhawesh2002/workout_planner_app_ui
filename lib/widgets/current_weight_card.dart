import 'package:flutter/material.dart';
import 'package:workout_planner_app/widgets/progress_bars.dart';

class CurrentWeightCard extends StatelessWidget {
  const CurrentWeightCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.5,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.15),
        borderRadius:
            BorderRadius.circular(MediaQuery.of(context).size.width * 0.06),
      ),
      padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.03,
          horizontal: MediaQuery.of(context).size.width * 0.035),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: constraints.maxWidth * 0.02,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Current Weight",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontSize: constraints.maxHeight * 0.05,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    weekButton(context, constraints),
                  ],
                ),
              ),
              //Weight
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: constraints.maxWidth * 0.02,
                ),
                child: RichText(
                  text: TextSpan(
                    text: "54",
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontSize: constraints.maxHeight * 0.08,
                          fontWeight: FontWeight.bold,
                        ),
                    children: [
                      TextSpan(
                        text: " kg",
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontSize: constraints.maxHeight * 0.04,
                                  fontWeight: FontWeight.w600,
                                ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(
                    vertical: constraints.maxHeight * 0.055,
                    horizontal: constraints.maxWidth * 0.02,
                  ),
                  child: LayoutBuilder(
                    builder: ((context, constraints) {
                      return const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ProgressBar(
                            change: '+1.2',
                            count: '23',
                            progress: 100,
                          ),
                          ProgressBar(
                            change: '-0.4',
                            count: '24',
                            progress: 50,
                          ),
                          ProgressBar(
                            change: '+1.0',
                            count: '25',
                            isSelected: true,
                            progress: 65,
                          ),
                          ProgressBar(
                            change: '-0.3',
                            count: '26',
                            progress: 50,
                          ),
                          ProgressBar(
                            change: '-1.5',
                            count: '27',
                            progress: 35,
                          ),
                          ProgressBar(
                            change: '+0.8',
                            count: '28',
                            progress: 45,
                          ),
                        ],
                      );
                    }),
                  ),
                ),
              ),
              //Check Your Overall Score
              checkOverallScore(context, constraints),
            ],
          );
        },
      ),
    );
  }
}

Widget weekButton(BuildContext context, BoxConstraints constraints) {
  return Container(
    width: constraints.maxWidth * 0.30,
    height: constraints.maxHeight * 0.1,
    decoration: BoxDecoration(
      color: Colors.black,
      borderRadius: BorderRadius.circular(constraints.maxHeight),
    ),
    padding: EdgeInsets.symmetric(horizontal: constraints.maxWidth * 0.015),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(
              left: constraints.maxWidth * 0.04,
            ),
            child: Text(
              "Week",
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  color: Colors.white, fontSize: constraints.maxWidth * 0.04),
            ),
          ),
        ),
        Material(
          shape: const CircleBorder(),
          color: Colors.white.withOpacity(0.15),
          child: Padding(
            padding: EdgeInsets.all(constraints.maxWidth * 0.025),
            child: Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.white,
              size: constraints.maxWidth * 0.035,
            ),
          ),
        )
      ],
    ),
  );
}

Widget checkOverallScore(BuildContext context, BoxConstraints constraints) {
  return Container(
    width: constraints.maxWidth,
    height: constraints.maxHeight * 0.15,
    decoration: BoxDecoration(
      color: Colors.black,
      borderRadius: BorderRadius.circular(constraints.maxHeight),
    ),
    padding: EdgeInsets.symmetric(horizontal: constraints.maxWidth * 0.025),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 2,
          child: Padding(
            padding: EdgeInsets.only(left: constraints.maxWidth * 0.05),
            child: Text(
              "Check Your Overall Score",
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.normal,
                    fontSize: constraints.maxWidth * 0.04,
                  ),
            ),
          ),
        ),
        Flexible(
          flex: 1,
          child: IconButton(
            onPressed: () {},
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.white),
            ),
            padding: EdgeInsets.all(
              constraints.maxHeight * 0.035,
            ),
            icon: Icon(
              Icons.arrow_outward,
              color: Colors.black.withOpacity(0.7),
            ),
          ),
        ),
      ],
    ),
  );
}
