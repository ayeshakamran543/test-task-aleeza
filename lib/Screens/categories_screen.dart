import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/app_constants.dart';
import 'package:project/widgets/searchbar.dart';
import '../widgets/category_card.dart';
import 'smartphones_screen.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kColorWhite,
        centerTitle: true,
        toolbarHeight: 150.h,
        title:  Text("Categories",style:kStyleH3bm),),
      body: Padding( padding: EdgeInsets.symmetric(horizontal: 21.w, vertical: 20.h),
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          
          CustomSearchBar(hintText: 'Iphone'),
            
            Text("230 Results Found",style:kStyleL2bm,selectionColor:kColorlightblack.withOpacity(0.25),),  
            SizedBox(height: 10.h,),
            Expanded(
              child: GridView.count(
               
                crossAxisCount: 2,
                mainAxisSpacing: 21.h,
                crossAxisSpacing: 28.w,
                children: [
                  CategoryCard(
                    title: "Smartphones",
                    image: "assets/images/image 13.png",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const SmartPhonesScreen(),
                        ),
                      );
                    },
                  ),
                  CategoryCard(title: "Laptops", image: "assets/images/Mask group.png", onTap: () {
                    // Navigate to Laptops Screen
                  }),
                  CategoryCard(title: "Tablets", image: "assets/images/audio.png", onTap: () {
                    // Navigate to Tablets Screen
                  }),
                  CategoryCard(title: "Wearables", image: "assets/images/audio.png", onTap: () {
                    // Navigate to Wearables Screen
                  }),
                  CategoryCard(title: "Accessories", image: "assets/images/audio.png", onTap: () {
                    // Navigate to Accessories Screen
                  }),
                  CategoryCard(title: "Cameras", image: "assets/images/audio.png", onTap: () {
                    // Navigate to Cameras Screen
                  }),
                  CategoryCard(title: "Gaming", image: "assets/images/audio.png", onTap: () {
                    // Navigate to Gaming Screen
                  }),
                  CategoryCard(title: "Audio", image: "assets/images/audio.png", onTap: () {
                    // Navigate to Audio Screen
                  }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
