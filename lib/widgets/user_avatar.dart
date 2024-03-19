import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  final String? imgPath;
  final VoidCallback? onTap;
  final double? radius;
  const UserAvatar({super.key, this.imgPath, this.onTap, this.radius});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        radius: radius ?? MediaQuery.of(context).size.width * 0.08,
        backgroundColor: Colors.amber,
        child: imgPath == null ? null : Image.asset(imgPath!),
      ),
    );
  }
}
