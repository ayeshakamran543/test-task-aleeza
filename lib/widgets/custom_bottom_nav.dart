import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project/app_constants.dart';

class CustomBottomNav extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNav({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  Widget _navItem({
    required String iconPath,
    required String label,
    required bool isSelected,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 6.h),
      child: Container(
        width: 64.w, // ⬅️ narrower
        decoration: BoxDecoration(
          color: isSelected
              ? kColorGrey.withOpacity(0.05)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min, // ⬅️ VERY IMPORTANT
          children: [
            SvgPicture.asset(
              iconPath,
              height: 21.h,
              width: 21.w,
              //colorFilter: const ColorFilter.mode(
                //Colors.white,
               // BlendMode.srcIn,
             // ),
            ),
          //  SizedBox(height: 2.h),
            Text(
              label,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: kStyleL2bm.copyWith(color: kColorWhite),
                 
                
              
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      currentIndex: currentIndex,
      onTap: onTap,
      type: BottomNavigationBarType.fixed,

      showSelectedLabels: false,
      showUnselectedLabels: false,

      items: [
        BottomNavigationBarItem(
          label: 'Products',
          icon: _navItem(
            iconPath: 'assets/images/Product.svg',
            label: 'Products',
            isSelected: currentIndex == 0,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Categories',
          icon: _navItem(
            iconPath: 'assets/images/cat.svg',
            label: 'Categories',
            isSelected: currentIndex == 1,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Favourites',
          icon: _navItem(
            iconPath: 'assets/images/heart.svg',
            label: 'Favourites',
            isSelected: currentIndex == 2,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Account',
          icon: _navItem(
            iconPath: 'assets/images/person.svg',
            label: 'Account',
            isSelected: currentIndex == 3,
          ),
        ),
      ],
    );
  }
}
