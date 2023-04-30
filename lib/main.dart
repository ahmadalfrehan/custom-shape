import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.teal,
        ),
        body: Center(
          child: ClipRRect(
            clipBehavior: Clip.antiAlias,
            // clipper: CustomClipper(
            //
            // ),
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(10),
              topLeft: Radius.circular(50),
            ),
            child: CustomPaint(
              size: const Size(300, 250),
              painter: Painter(),
              // child: Container(
              //   width: 300,
              //   height: 250,
              //   decoration: const BoxDecoration(
              //     borderRadius: BorderRadius.only(
              //       topRight: Radius.circular(0),
              //       topLeft: Radius.circular(50),
              //     ),
              //   ),
              // ),
            ),
          ),
        ),
      ),
    );
  }
}

class Painter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.teal
      ..strokeWidth = 15;

    var path = Path();

    path.moveTo(0, size.height / 1.7);
    path.quadraticBezierTo(size.width * 0.02, size.height * 0.9,
        size.width * 0.5, size.height * 0.87);
    path.quadraticBezierTo(
        size.width * 0.8, size.height * 0.86, size.width, size.height * 0.85);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    canvas.drawPath(
      path,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
