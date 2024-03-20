import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
            Positioned.fill(
              bottom: height * 0.1,
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  width: width * 0.9,
                  height: height * 0.6,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(width * 0.06),
                  ),
                  padding: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height * 0.03,
                      horizontal: MediaQuery.of(context).size.width * 0.035),
                  child: LayoutBuilder(builder: (context, constraints) {
                    return Stack(
                      children: [
                        Positioned.fill(
                          top: constraints.maxHeight * 0.0165,
                          left: constraints.maxWidth * 0.02,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Current Weight",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(
                                    fontSize: constraints.maxHeight * 0.03,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                          ),
                        ),
                        Positioned.fill(
                            right: constraints.maxWidth * 0.02,
                            child: Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                width: constraints.maxWidth * 0.3,
                                height: constraints.maxHeight * 0.08,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(
                                      constraints.maxHeight),
                                ),
                                padding: EdgeInsets.symmetric(
                                    horizontal: constraints.maxWidth * 0.015),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: constraints.maxWidth * 0.055,
                                      ),
                                      child: Text(
                                        "Week",
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleSmall
                                            ?.copyWith(
                                                color: Colors.white,
                                                fontSize: constraints.maxWidth *
                                                    0.035),
                                      ),
                                    ),
                                    Material(
                                      shape: const CircleBorder(),
                                      color: Colors.white.withOpacity(0.15),
                                      child: Padding(
                                        padding: EdgeInsets.all(
                                            constraints.maxWidth * 0.025),
                                        child: Icon(
                                          Icons.arrow_forward_ios_rounded,
                                          color: Colors.white,
                                          size: constraints.maxWidth * 0.035,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )),
                        Positioned.fill(
                          top: constraints.maxHeight * 0.1,
                          left: constraints.maxWidth * 0.02,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: RichText(
                              text: TextSpan(
                                text: "54",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.copyWith(
                                      fontSize: constraints.maxHeight * 0.065,
                                      fontWeight: FontWeight.normal,
                                    ),
                                children: [
                                  TextSpan(
                                    text: " kg",
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium
                                        ?.copyWith(
                                          fontSize:
                                              constraints.maxHeight * 0.04,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              width: constraints.maxWidth,
                              height: constraints.maxHeight * 0.15,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(
                                    constraints.maxHeight),
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: constraints.maxWidth * 0.02),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: constraints.maxWidth * 0.05),
                                    child: Text(
                                      "Check Your Overall Score",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleLarge
                                          ?.copyWith(
                                            fontWeight: FontWeight.normal,
                                            fontSize:
                                                constraints.maxWidth * 0.04,
                                          ),
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    style: const ButtonStyle(
                                      backgroundColor: MaterialStatePropertyAll(
                                          Colors.white),
                                    ),
                                    padding: EdgeInsets.all(
                                      constraints.maxHeight * 0.035,
                                    ),
                                    icon: Icon(
                                      Icons.arrow_outward,
                                      color: Colors.black.withOpacity(0.7),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
