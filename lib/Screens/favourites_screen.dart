import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/app_constants.dart';
import 'package:project/widgets/favcards.dart';

class FavouritesScreen extends StatelessWidget {
  const FavouritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
       toolbarHeight: 150.h,
        backgroundColor: kColorWhite,
        title: Text("Favourites",style:kStyleH3bm)),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 28.w, vertical: 20.h),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Search Products',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.r),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: [
                  FavCard(
                    title: "iPhone 9",
                    image: "assets/images/image 13.png",
                    price: "\$60",
                  ),
                  const SizedBox(height: 16),
                  FavCard(
                    title: "iPhone 11",
                    image: "assets/images/image 13.png",
                    price: "\$60",
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
