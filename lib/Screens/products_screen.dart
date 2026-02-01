import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/Screens/productdetail.dart';
import 'package:project/app_constants.dart';
import '../widgets/product_card.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar 
      (centerTitle: true,
      toolbarHeight: 150.h,
      backgroundColor: kColorWhite,
        title: Padding(padding: EdgeInsets.all(100.w),
      
      child: 
      Text("Products",style:kStyleH3bm,))),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 28.w, vertical: 20.h),
        child: ListView(
          children: [
          
           
          SizedBox(height: 10.h),

          TextField(
           
            decoration: InputDecoration(
              hintText: 'Search Products',
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.r),
              ),
            ),
          ),
          Container(
            //padding: EdgeInsets.all(5.w),
            height: 30.h,
            width: 142.w,
            child: Text("230 Results Found",style:kStyleL2,selectionColor:kColorlightblack.withOpacity(0.25),)),
          SizedBox(height: 10.h,),
          ProductCard(
  title: "iPhone 14",
  image: "assets/images/image 13.png",
  price: "\$60",
  rating: 4.9,
  brand: "Apple",
  category: "Smartphones",
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => const ProductDetailsScreen(),
      ),
    );
  },
),
SizedBox(height: 20.h,),
 ProductCard(
  title: "iPhone 14",
  image: "assets/images/image 13.png",
  price: "\$60",
  rating: 4.9,
  brand: "Apple",
  category: "Smartphones",
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => const ProductDetailsScreen(),
      ),
    );
  },
),
SizedBox(height: 20.h,),
 ProductCard(
  title: "iPhone 14",
  image: "assets/images/image 13.png",
  price: "\$60",
  rating: 4.9,
  brand: "Apple",
  category: "Smartphones",
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => const ProductDetailsScreen(),
      ),
    );
  },
)
  


        ],
        ),
      ),
    );
  }
}
