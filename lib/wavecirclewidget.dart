import 'package:flutter/material.dart';
import 'dart:math';

class WaveCircleWidget extends StatelessWidget {
  const WaveCircleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: ShapeDecoration(
        shape: WavyCircleShape(),
      ),
    );
  }
}

class WavyCircleShape extends ShapeBorder {

  @override
  EdgeInsetsGeometry get dimensions => EdgeInsets.zero;

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) {
    return getOuterPath(rect, textDirection: textDirection);
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    final Path path = Path();

    final double centerX = rect.width / 2;
    final double centerY = rect.height / 2;
    final double radius = rect.width / 2;

    const int waves = 20;

    for (int i = 0; i < 360; i++) {
      final double angle = (i * pi) / 180;
      final double waveOffset = sin(angle * waves) * 2; // Adjust the amplitude
      final double x = centerX + (radius + waveOffset) * cos(angle);
      final double y = centerY + (radius + waveOffset) * sin(angle);

      if (i == 0) {
        path.moveTo(x, y);
      } else {
        path.lineTo(x, y);
      }
    }

    path.close();
    return path;
  }
  

  @override
  ShapeBorder scale(double t) {
    // You can implement scaling if needed
    return this;
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {
    final Paint paint = Paint()
      ..shader = const RadialGradient(
        center: Alignment.center,
        radius: 0.8,
        colors: [
          Color(0xFF966B8B),
          Color(0xFF241D2B),
        ], // Adjust gradient colors
        stops: [0.0, 1.0], // Adjust gradient stops
      ).createShader(rect)
      ..style = PaintingStyle.fill;

    final Path path = getOuterPath(rect, textDirection: textDirection);

    // Apply the radial gradient to the wavy circle shape
    canvas.drawPath(path, paint);
  }
}