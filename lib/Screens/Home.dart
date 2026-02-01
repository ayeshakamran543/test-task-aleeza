import 'package:flutter/material.dart';

import '../widgets/custom_bottom_nav.dart';
import 'products_screen.dart';
import 'categories_screen.dart';
import 'favourites_screen.dart';
import 'account_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  final List<Widget> _screens = const [
    ProductsScreen(),
    CategoriesScreen(),
    FavouritesScreen(),
    AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // active screen
      body: _screens[selectedIndex],

      // custom navigation bar
      bottomNavigationBar: CustomBottomNav(
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }
}
