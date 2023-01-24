import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CoffeContainer extends StatelessWidget {
  final String imagePath;
  final String coffeeName;
  final String price;
  final String disc;
  CoffeContainer({
    required this.coffeeName,
    required this.imagePath,
    required this.price,
    required this.disc,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 15.w),
      width: 250.w,
      decoration: BoxDecoration(
        color: Colors.black54,
        borderRadius: BorderRadius.circular(35.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(imagePath),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5.w, horizontal: 8.w),
            child: Text(
              coffeeName,
              style: TextStyle(fontSize: 20.sp, color: Colors.grey.shade300),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: Text(
              disc,
              style: TextStyle(color: Colors.grey.shade400, fontSize: 15.sp),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5.w, horizontal: 8.w),
                child: Text(
                  '\$' + price,
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
              Icon(
                Icons.add_box_rounded,
                size: 28,
                color: Colors.orange.shade400,
              )
            ],
          ),
        ],
      ),
    );
  }
}
