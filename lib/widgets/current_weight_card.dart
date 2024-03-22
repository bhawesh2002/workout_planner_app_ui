import 'package:flutter/material.dart';

class CurrentWeightCard extends StatelessWidget {
  const CurrentWeightCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.5,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.2),
        borderRadius:
            BorderRadius.circular(MediaQuery.of(context).size.width * 0.06),
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
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
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
                  child: weekButton(context, constraints)),
            ),
            Positioned.fill(
              top: constraints.maxHeight * 0.1,
              left: constraints.maxWidth * 0.02,
              child: Align(
                alignment: Alignment.topLeft,
                child: RichText(
                  text: TextSpan(
                    text: "54",
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontSize: constraints.maxHeight * 0.065,
                          fontWeight: FontWeight.normal,
                        ),
                    children: [
                      TextSpan(
                        text: " kg",
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontSize: constraints.maxHeight * 0.04,
                                  fontWeight: FontWeight.normal,
                                ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            //Check Your Overall Score
            Positioned.fill(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: checkOverallScore(context, constraints),
              ),
            ),
          ],
        );
      }),
    );
  }
}

Widget weekButton(BuildContext context, BoxConstraints constraints) {
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
