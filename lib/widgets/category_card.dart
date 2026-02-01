import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/app_constants.dart';

class CategoryCard extends StatelessWidget {
  final String title;
  final String image;
  final VoidCallback onTap;

  const CategoryCard({
    super.key,
    required this.title,
    required this.image,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12.r),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          Positioned(
            bottom: 8.h,
            //top: 7.h,
            left: 8,
            child: Text(
              title,
              style:kStyleL1bm.copyWith(color: kColorWhite,))
          ),
        ],
      ),
    );
  }
}
