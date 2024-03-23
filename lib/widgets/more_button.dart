import 'package:flutter/material.dart';

class AppBarButton extends StatelessWidget {
  final IconData icon;
  final double? iconSize;
  final VoidCallback onTap;
  const AppBarButton(
      {super.key, required this.icon, required this.onTap, this.iconSize});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white.withOpacity(0.15),
      clipBehavior: Clip.antiAlias,
      shape: const CircleBorder(),
      child: InkWell(
        onTap: onTap,
        splashColor: Colors.transparent,
        child: Padding(
          padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.04),
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
