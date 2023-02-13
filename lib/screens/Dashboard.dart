import 'package:flutter/material.dart';
import 'package:furniture/widgets/TextNormal.dart';
import 'package:sizer/sizer.dart';

class DashbboardView extends StatelessWidget {
  const DashbboardView({Key? key}) : super(key: key);

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
                height: 10.h,
                width: 100.w,
                child: _topAction(),
              ),
              Container(
                height: 20.h,
                width: 100.w,
                color: Colors.white,
                child: _customNow(),
              ),
              Container(
                height: 10.h,
                width: 100.w,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return _categories();
                    }),
              ),
              Container(
                height: 50.h,
                width: 100.w,
                color: Colors.green,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _topAction() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextNormal(text: "Welcome Back!"),
            TextNormal(text: "Arsh.A.Ghate")
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: CircleAvatar(
          radius: 10.w,
          backgroundColor: Colors.yellow,
        ),
      )
    ],
  );
}

Widget _customNow() {
  return Row(
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.arrow_right_sharp),
            TextNormal(text: "Custom Now"),
            TextNormal(text: "Discount 50% on\nyour first transaction"),
          ],
        ),
      ),
      Expanded(
        child: Container(
          color: Colors.blue,
        ),
      )
    ],
  );
}

Widget _categories() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: const [
            Icon(
              Icons.arrow_drop_down,
              color: Colors.white,
            ),
            Text(
              "Category BF",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    ),
  );
}
