import 'package:flutter/material.dart';
import 'package:furniture/screens/Dashboard.dart';
import 'package:furniture/widgets/TextNormal.dart';
import 'package:sizer/sizer.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: 100.h,
          width: 100.w,
          color: Colors.white,
          child: Column(
            children: [
              Container(
                height: 20.h,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(Icons.abc),
                      SizedBox(
                        width: 5.w,
                      ),
                      TextNormal(text: "Pondasi"),
                    ],
                  ),
                ),
              ),
              Container(
                height: 30.h,
                child: const Padding(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: Text(
                    "Find your\nminimalist Foundation \nfor your \n room",
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 37, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                height: 45.h,
                width: 100.w,
                color: Colors.white,
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 45.h,
                          width: 85.w,
                          decoration: const BoxDecoration(
                              color: Colors.grey,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: CustomPaint(
                            size: Size(85.w, 45.h),
                            painter: CurvedPainter(),
                          ),
                        ),
                        Positioned(
                          right: 1.w,
                          top: 0.h,
                          child: CircleAvatar(
                            backgroundColor: Colors.yellow[600],
                            radius: 15.w,
                            child: const Text("40 + \nProducts",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white)),
                          ),
                        ),
                        Positioned(
                          bottom: 1.h,
                          left: 2.w,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const DashbboardView()));
                            },
                            child: Container(
                              height: 5.h,
                              width: 10.w,
                              color: Colors.black,
                              child: const Icon(
                                Icons.arrow_right_alt,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CurvedPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.teal
      ..strokeWidth = 15;

    var path = Path();

    path.moveTo(0, size.height * 0.7);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.7,
        size.width * 0.5, size.height * 0.8);
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.9,
        size.width * 1.0, size.height * 0.8);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
