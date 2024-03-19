import 'package:flutter/material.dart';

class MoreButton extends StatelessWidget {
  const MoreButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white.withOpacity(0.15),
      clipBehavior: Clip.antiAlias,
      shape: const CircleBorder(),
      child: InkWell(
        onTap: () {},
        splashColor: Colors.transparent,
        child: Padding(
          padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.03),
          child: Icon(
            Icons.more_horiz,
            color: Colors.white,
            size: MediaQuery.of(context).size.width * 0.08,
          ),
        ),
      ),
    );
  }
}
