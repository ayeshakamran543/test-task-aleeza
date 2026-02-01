import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/app_constants.dart';

class FavCard extends StatelessWidget {
  final String title;
  final String image;
  final String price;

  const FavCard({
    super.key,
    required this.title,
    required this.image,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 318.w,
      height: 88.h,
      child: Card(
        shape: RoundedRectangleBorder(
          //borderRadius: BorderRadius.circular(12.r),
        ),
        child: Padding(
          padding: EdgeInsets.all(12.w),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              /// Product Image
              ClipRRect(
                borderRadius: BorderRadius.circular(50.r),
                child: Image.asset(
                  image,
                  height: 62.h,
                  width: 62.w,
                  fit: BoxFit.cover,
                ),
              ),

              SizedBox(width: 12.w),

              /// Text Section
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      style: kStyleB2b.copyWith(color: kColorBlack),
                    ),
                    SizedBox(height: 1.h),
                    Text(
                      price,
                      style: kStyleL2bm,
                    ),
                  ],
                ),
              ),

              /// Heart Icon (Image)
              Image.asset(
                'assets/images/Vector.svg', //  heart image
                height: 19.h,
                width: 16.w,
              ),
            ],
          ),  
        ),
      ),
    );
  }
}
