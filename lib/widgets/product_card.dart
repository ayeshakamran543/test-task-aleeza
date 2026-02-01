import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/app_constants.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final String image;
  final String price;
  final double rating;
  final String brand;
  final String category;
  final VoidCallback onTap;

  const ProductCard({
    super.key,
    required this.title,
    required this.image,
    required this.price,
    required this.rating,
    required this.brand,
    required this.category,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        // elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.r),
        ),
        color: kColorWhite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            /// 🔹 Product Image
            ClipRRect(
              
                   
              child: Image.asset(
                image,
                width: 288.w,
                height: 172.77.h,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 15.h),

            Padding(
              padding: EdgeInsets.all(12.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  /// 🔹 Title + Price Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          title,
                          style: kStyleB2b
                        ),
                      ),
                      Text(
                        price,
                        style: kStyleB1b,
                        ),
                      
                    ],
                  ),

                 

                  /// 🔹 Rating
                  Row(
                    children: [
                      Text(
                        rating.toString(),
                        style: kStyleL2b,
                      ),
                      const SizedBox(width: 4),
                      ...List.generate(
                        5,
                        (index) => Icon(
                          index < rating.round()
                              ? Icons.star
                              : Icons.star_border,
                          size: 14,
                          color: kColororange,
                        ),
                      ),
                    ],
                  ),

                   SizedBox(height: 4.8.h),

                  /// 🔹 Brand
                  Text(
                    "By $brand",
                    style:kStyleL2bm,selectionColor: kColorGrey.withOpacity(0.5),
                     
                    
                  ),

                  SizedBox(height: 9.6.h),

                  /// 🔹 Category
                  Text(
                    "In $category",
                    style:kStyleL2bm.copyWith(color: kColorBlack),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
