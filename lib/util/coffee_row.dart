import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CoffeeRow extends StatelessWidget {
  final String imgpz;

  final String text1;

  final String text2;
  CoffeeRow({
    required this.imgpz,
    required this.text1,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Color.fromARGB(255, 34, 34, 34),
          ),
          width: 700.w,
          height: 280.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 18.w),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(imgpz), fit: BoxFit.fill),
                  borderRadius: BorderRadius.circular(20),
                ),
                width: 290.w,
                height: 200.w,
              ),
              SizedBox(
                width: 10.w,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 35.h,
                  ),
                  Text(
                    text1,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: MediaQuery.of(context).size.width * 0.038),
                  ),
                  Text(text2,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: MediaQuery.of(context).size.width * 0.038)),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
