import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/Screens/productdetail.dart';
import 'package:project/app_constants.dart';
import '../widgets/product_card.dart';

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
        child: ListView(
          children: [
          ProductCard(
  title: "iPhone 14",
  image: "assets/images/iphone.jpg",
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
),
SizedBox(height: 20.h,),
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
    );
  }
}
