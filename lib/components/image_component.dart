import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mockup_1/utils/app_colors.dart';

class ImageComponent extends StatelessWidget {
  const ImageComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double mqw = MediaQuery.of(context).size.width;
    final double mqh = MediaQuery.of(context).size.height;
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
          left: mqw * .33,
          top: mqh * .205,
          child: const SizedBox(
            height: 28,
            width: 28,
            child: CustomPaint(
              painter: CirclePainter(color: AppColors.purpleColors),
            ),
          ),
        ),
        Positioned(
          left: mqw * .33,
          top: mqh * .28,
          child: const SizedBox(
            height: 56,
            width: 56,
            child: Quadrant(
              color: AppColors.purpleColors,
              circleAlignment: CircleAlignment.topRight,
            ),
          ),
        ),
        Positioned(
          left: mqw * .49,
          top: mqh * .205,
          child: Column(
            children: const [
              SizedBox(
                height: 58,
                width: 58,
                child: Quadrant(
                  color: AppColors.purpleColors,
                  circleAlignment: CircleAlignment.bottomLeft,
                ),
              ),
              SizedBox(
                height: 58,
                width: 58,
                child: Quadrant(
                  color: AppColors.purpleColors,
                  circleAlignment: CircleAlignment.topRight,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

enum CircleAlignment {
  topRight,
  bottomLeft,
}

class Quadrant extends StatelessWidget {
  final CircleAlignment? circleAlignment;
  final Color color;

  const Quadrant({
    required this.color,
    this.circleAlignment,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: ClipRect(
        child: CustomPaint(
          painter: CirclePainter(
            circleAlignment: circleAlignment,
            color: color,
          ),
        ),
      ),
    );
  }
}

class CirclePainter extends CustomPainter {
  final CircleAlignment? circleAlignment;
  final Color color;

  const CirclePainter({
    this.circleAlignment,
    required this.color,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final radius = min(size.height, size.width);
    final offset = defineOffset(circleAlignment, size);
    canvas.drawCircle(offset, radius, Paint()..color = color);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

  Offset defineOffset(CircleAlignment? type, Size size) {
    if (type == CircleAlignment.topRight) {
      return Offset(size.width, .0);
    }
    if (type == CircleAlignment.bottomLeft) {
      return Offset(.0, size.height);
    }
    return Offset(size.width, size.height);
  }
}
