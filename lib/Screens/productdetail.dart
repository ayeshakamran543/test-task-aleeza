import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project/app_constants.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      /// APP BAR
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Product Details',
          style:kStyleH5 
          
        ),
        leading: const Icon(Icons.arrow_back_ios, color: Colors.black),
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            /// PRODUCT IMAGE
            Image.asset(
              'assets/images/image 13.png',
              height: 240.h,
              width: double.infinity,
              fit: BoxFit.cover,
            ),

            Padding(
              padding: EdgeInsets.all(16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  /// TITLE ROW + HEART
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       Text(
                        'Product Details:',
                        style: kStyleH3bm,
                        ),
                      

                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isLiked = !isLiked;
                          });
                        },
                        child:SvgPicture.asset(
                          isLiked
                              ? 'assets/images/Vector.png'
                              : 'assets/images/Vector(1).svg',
                          width: 26.w,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 10.h),

                  _detailText('Name:', 'iphone 9'),
                  _detailText('Price:', '\$60'),
                  _detailText('Category:', 'smartphones'),
                  _detailText('Brand:', 'Apple'),
                  _detailText('Rating:', '4.9 ⭐⭐⭐⭐⭐'),
                  _detailText('Stock:', '45'),

                  SizedBox(height: 9.h),

                   Text(
                    'Description:',
                    style: kStyleB1,
                  ),
                   
                   Text(
                    'Lorem ipsum är en utfyllnadstext från tryck- och '
                    'förlagsindustrin. Lorem ipsum har varit standard ända.',style: kStyleL2bm,
                  ),

                  SizedBox(height: 6.h),

                   Text(
                    'Product Gallery:',
                    style: kStyleL1bm,
                  ),
                  SizedBox(height: 8),

                  GridView.builder(
                    shrinkWrap: true,
                    physics:  NeverScrollableScrollPhysics(),
                    itemCount: 4,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10.w,
                      mainAxisSpacing: 10.h,
                    ),
                    itemBuilder: (context, index) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(8.r),
                        child: Image.asset(
                          'assets/images/image 13.png',
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _detailText(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: RichText(
        text: TextSpan(
          style:const TextStyle(color:kColorBlack),
          children: [
            TextSpan(
              text: '$title ',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: value),
          ],
        ),
      ),
    );
  }
}
