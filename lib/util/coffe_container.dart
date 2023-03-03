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
      width: 255.w,
      decoration: BoxDecoration(
        color: Colors.black54,
        borderRadius: BorderRadius.circular(35.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(imagePath),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 5.w,
            ),
            child: Text(
              coffeeName,
              style: TextStyle(fontSize: 24.sp, color: Colors.grey.shade300),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: Text(
              disc,
              style: TextStyle(color: Colors.grey.shade400, fontSize: 20.sp),
            ),
          ),
          SizedBox(
            height: 30.w,
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
