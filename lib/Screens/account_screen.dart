import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project/app_constants.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            50.verticalSpace,

            /// Title
            Center(
              child: Text(
                'Mitt konto',
                style: kStyleH3.copyWith(color: kColorBlack)
                 
                
              ),
            ),

            34.verticalSpace,

            /// Profile Card
            Container(
              padding: EdgeInsets.all(16.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                gradient: const LinearGradient(
                  colors: [Colors.black, Colors.black87],
                ),
              ),
              child: Row(
                children: [
                  /// Avatar
                  CircleAvatar(
                    radius: 28.r,
                    backgroundColor: kColorWhite,
                  ),

                  16.horizontalSpace,

                  /// User Info
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'My Name',
                        style: kStyleB2b.copyWith(color: kColorWhite)),
                   
                      Text(
                        'myname@gmail.com',
                        style: kStyleL2b.copyWith(color: kColorWhite),
                         
                        
                      ),
                      
                      Text(
                        '07XXXXXXXX',
                        style: kStyleL2b.copyWith(color: kColorWhite),
                      ),
                    ],
                  )
                ],
              ),
            ),

            63.verticalSpace,

            /// Menu Items
            Column(
              
              children: [
                Padding(padding: EdgeInsets.only(left: 42.w),),
                _menuItem(
                  iconPath: 'assets/images/1.svg',
                  title: 'Kontoinstallningar',
                ),
                _menuItem(
                  iconPath: 'assets/images/2.svg',
                  title: 'Mina betalmetoder',
                ),
                _menuItem(
                  iconPath: 'assets/images/3.svg',
                  title: 'Support',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// Menu Item Widget
  Widget _menuItem({
    required String iconPath,
    required String title,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 14.h),
      child: Row(
        children: [
          SvgPicture.asset(
            iconPath,
            height: 18.h,
            width: 18.w,
            // colorFilter: const ColorFilter.mode(
            //   Colors.black,
            //   BlendMode.srcIn,
            // ),
          ),
          16.horizontalSpace,
          Text(
            title,
            style: kStyleB2b.copyWith(color: kColorBlack),
            
          ),
        ],
      ),
    );
  }
}
