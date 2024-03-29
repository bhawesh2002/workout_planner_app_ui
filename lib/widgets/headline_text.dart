import 'package:flutter/material.dart';

class HeadlineText extends StatelessWidget {
  const HeadlineText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Start your",
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                fontSize: MediaQuery.of(context).size.width * 0.08,
                fontWeight: FontWeight.bold,
              ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        Text(
          "workout today!",
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              fontSize: MediaQuery.of(context).size.width * 0.08,
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
