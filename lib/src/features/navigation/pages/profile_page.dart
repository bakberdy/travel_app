// import 'package:auto_route/auto_route.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:social_media/src/core/monitoring/logger.dart';

// @RoutePage()
// class ExamplePage3 extends StatefulWidget {
//   const ExamplePage3({super.key});

//   @override
//   State<ExamplePage3> createState() => _ExamplePage3State();
// }

// class _ExamplePage3State extends State<ExamplePage3>
//     with TickerProviderStateMixin {
//   late AnimationController _controller;

//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//       duration: Duration(seconds: 2),
//       vsync: this,
//     )..repeat();
//   }

//   @override
//   Widget build(BuildContext context) {
//     Logger.info('Building $runtimeType');
//     return AnimatedBuilder(
//       builder: (context, child) {
//         return CustomPaint(painter: PursuingCirclePainter(_controller.value));
//       },
//       animation: _controller,
//     );
//   }
// }

// class BasicPathPainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     final paint = Paint()
//       ..color = Colors.blue
//       ..strokeWidth = 3.0
//       ..style = PaintingStyle.stroke;

//     final path = Path();

//     // Move to starting point (without drawing)
//     path.moveTo(50, 50);

//     // Draw lines
//     path.lineTo(150, 50); // Horizontal line
//     path.lineTo(200, 150); // Diagonal line
//     path.lineTo(100, 200); // Another diagonal
//     path.lineTo(50, 100); // Back towards start

//     // Close the path (connects to starting point)
//     path.close();

//     canvas.drawPath(path, paint);
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) => false;
// }

// class PursuingCirclePainter extends CustomPainter {
//   final double _animationValue;

//   PursuingCirclePainter(this._animationValue);

//   @override
//   void paint(Canvas canvas, Size size) {
//     final center = Offset(size.width / 2, size.height / 2);
//     final baseRadius = size.width * 0.2;

//     for (int i = 0; i < 4; i++) {
//       final delay = i * 0.3;
//       final adjustedValue = ((_animationValue - delay) % 1.0).clamp(0, 1);
//       final radius = baseRadius + (baseRadius * adjustedValue);
//       final double opacity = 1.00 - adjustedValue;
//       final paint = Paint()
//         ..color = Colors.blue.withValues(alpha: opacity)
//         ..style = PaintingStyle.stroke
//         ..strokeWidth = 3.0;

//       canvas.drawCircle(center, radius, paint);
//     }
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) {
//     return oldDelegate is PursuingCirclePainter &&
//         oldDelegate._animationValue != _animationValue;
//   }
// }

// class BezierCurvesPainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     final paint = Paint()
//       ..color = Colors.purple
//       ..strokeWidth = 4.0
//       ..style = PaintingStyle.stroke;

//     final path = Path();

//     // Quadratic Bezier curve
//     path.moveTo(50, size.height * 0.8);
//     path.quadraticBezierTo(
//       size.width * 0.5,
//       50, // Control point
//       size.width - 50,
//       size.height * 0.8, // End point
//     );

//     canvas.drawPath(path, paint);

//     // Cubic Bezier curve
//     final path2 = Path();
//     paint.color = Colors.red;

//     path2.moveTo(50, size.height * 0.5);
//     path2.cubicTo(
//       size.width * 0.25,
//       100, // First control point
//       size.width * 0.75,
//       300, // Second control point
//       size.width - 50,
//       size.height * 0.5, // End point
//     );

//     canvas.drawPath(path2, paint);
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) => false;
// }

// class Sky extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     Logger.debug('Painting');
//     final Rect rect = Offset.zero & size;
//     const RadialGradient gradient = RadialGradient(
//       center: Alignment(0.7, -0.6),
//       radius: 0.2,
//       colors: <Color>[Color(0xFFFFFF00), Color(0xFF0099FF)],
//       stops: <double>[0.4, 1.0],
//     );
//     canvas.drawRect(rect, Paint()..shader = gradient.createShader(rect));
//   }

//   @override
//   SemanticsBuilderCallback get semanticsBuilder {
//     return (Size size) {
//       // Annotate a rectangle containing the picture of the sun
//       // with the label "Sun". When text to speech feature is enabled on the
//       // device, a user will be able to locate the sun on this picture by
//       // touch.
//       Rect rect = Offset.zero & size;
//       final double width = size.shortestSide * 0.4;
//       rect = const Alignment(0.8, -0.9).inscribe(Size(width, width), rect);
//       return <CustomPainterSemantics>[
//         CustomPainterSemantics(
//           rect: rect,
//           properties: const SemanticsProperties(
//             label: 'Sun',
//             textDirection: TextDirection.ltr,
//           ),
//         ),
//       ];
//     };
//   }

//   // Since this Sky painter has no fields, it always paints
//   // the same thing and semantics information is the same.
//   // Therefore we return false here. If we had fields (set
//   // from the constructor) then we would return true if any
//   // of them differed from the same fields on the oldDelegate.
//   @override
//   bool shouldRepaint(Sky oldDelegate) => false;
//   @override
//   bool shouldRebuildSemantics(Sky oldDelegate) => false;
// }
