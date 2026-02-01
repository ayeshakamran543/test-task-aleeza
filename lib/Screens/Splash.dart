import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project/Screens/Home.dart';
import 'package:project/app_constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          /// 🔹 Background Image
          Stack(
  children: [
    /// Image
    Image.asset(
      'assets/images/image 2.png',
      width: double.infinity,
      height: double.infinity,
      fit: BoxFit.cover,
    ),

    /// Gradient overlay
    Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.transparent,
            Colors.black54,
          ],
        ),
      ),
    ),
  ],
),

          /// 🔹 Dark overlay (optional but makes text readable)
          Container(
            color: Colors.black.withOpacity(0.4),
          ),

          /// 🔹 Top Text
          Positioned(
            top: 80.h,
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                "My Store",
                style:kStyleH1bm.copyWith(color: kColorBlack
                  
                ),
              ),
            ),
          ),
SizedBox(height: 425.h),
          /// 🔹 Bottom Texts
          Positioned(
            bottom: 60.h,
            left: 24.w,
            right: 24.w,
            child: Column(
              children: [

                Text(
                  "Välkommen",
                  style: kStyleB2bm.copyWith(color: kColorWhite),
                ),

                SizedBox(height: 12.h),

                Text(
                  "Hos oss kan du boka tid hos nästan alla "
                  "Sveriges salonger och mottagningar. "
                  "Boka frisör, massage, skönhetsbehandlingar, "
                  "friskvård och mycket mer.",
                  textAlign: TextAlign.center,
                  style: kStyleL1bm.copyWith(color: kColorWhite),
                ),
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}
