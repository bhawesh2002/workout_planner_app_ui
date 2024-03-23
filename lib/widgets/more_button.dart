import 'package:flutter/material.dart';

class AppBarButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  const AppBarButton({super.key, required this.icon, required this.onTap});

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
          padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
          child: Icon(
            icon,
            color: Colors.white,
            size: MediaQuery.of(context).size.width * 0.085,
          ),
        ),
      ),
    );
  }
}
