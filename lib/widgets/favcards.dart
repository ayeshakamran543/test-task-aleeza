import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
      padding: EdgeInsets.all(12.w),
     
      child: Row(
       // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
            
         CircleAvatar(
            backgroundImage: AssetImage(image),
            radius: 31.r,
          ),
            
          SizedBox(width: 12.w),
            
          /// Text Section
          Column(
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
            Spacer(), 
          /// Heart Icon (Image)
          SvgPicture.asset(
            'assets/images/Vector.svg', //  heart image
            height: 19.h,
            width: 16.w,
          ),
        ],
      ),
    );
  }
}
