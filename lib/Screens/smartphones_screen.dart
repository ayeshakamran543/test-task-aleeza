import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/Screens/productdetail.dart';
import 'package:project/app_constants.dart';
import '../widgets/product_card.dart';
import '../widgets/searchbar.dart';

class SmartPhonesScreen extends StatelessWidget {
  const SmartPhonesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 150.h,
        backgroundColor: kColorWhite,
        title: Text("Smart Phones",style:kStyleH3bm)),
        
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 28.w, vertical: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomSearchBar(hintText: 'Iphone'),
            Text("230 Results Found",style:kStyleL2bm,textAlign: TextAlign.start,selectionColor:kColorlightblack.withOpacity(0.25),),  
            SizedBox(height: 10.h,),
            Expanded(
              child: ListView(
                children: [
            
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
SizedBox(height: 25.h,),
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
SizedBox(height: 25.h,),
ProductCard(
  title: "iPhone 15",
  image: "assets/images/image 13.png",
  price: "\$70",
  rating: 4.8,
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

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
