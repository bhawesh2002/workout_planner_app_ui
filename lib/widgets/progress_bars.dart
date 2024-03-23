import 'package:flutter/material.dart';
import 'package:workout_planner_app/theme/app_colors.dart';
import 'dart:math' as math;

class ProgressBar extends StatelessWidget {
  final String change;
  final String count;
  final double progress;
  final double? barWidth;
  final double? barHeight;
  final bool isSelected;

  const ProgressBar({
    super.key,
    this.barWidth,
    this.barHeight,
    required this.change,
    required this.count,
    required this.progress,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: barWidth ?? 45,
        maxHeight: barHeight ?? double.infinity,
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                change,
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      color: change.startsWith("+")
                          ? AppColors.green
                          : Colors.redAccent,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              SizedBox(height: constraints.maxHeight * 0.02),
              Flexible(
                child: ClipRRect(
                  clipBehavior: Clip.antiAlias,
                  borderRadius: BorderRadius.circular(constraints.maxHeight),
                  child: Container(
                    width: double.infinity,
                    height: (constraints.maxHeight / 100) * progress,
                    decoration: BoxDecoration(
                      color: isSelected
                          ? AppColors.primary
                          : Colors.grey.withOpacity(0.6),
                    ),
                    child: isSelected
                        ? null
                        : CustomPaint(
                            size: Size(
                                constraints.maxWidth, constraints.maxHeight),
                            painter: LinePainter(progress: progress),
                          ),
                  ),
                ),
              ),
              SizedBox(height: constraints.maxHeight * 0.04),
              Text(
                count,
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      color: isSelected
                          ? Colors.white
                          : Colors.white.withOpacity(0.6),
                    ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class LinePainter extends CustomPainter {
  final double progress;
  LinePainter({required this.progress});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.grey.withOpacity(0.6)
      ..strokeWidth = 3;
    const spaceBetnLines = 10.0;
    final linesCount = (size.height / spaceBetnLines).floor();
    final lineYPositions = List.generate(
      linesCount + 10,
      (index) => spaceBetnLines * (index + 1),
    );
    for (final lineY in lineYPositions) {
      // Calculate the angle based on progress
      const double angle = math.pi / 4;

      // Calculate the new coordinates of the endpoints after rotation
      const double startX = 0;
      final double startY = lineY;
      final double endX = (size.width * 2) * math.cos(angle);
      final double endY =
          lineY - size.width * math.sin(angle); // Subtract for upward rotation

      canvas.drawLine(
        Offset(startX, startY),
        Offset(endX, endY),
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
