import 'package:e_commerce_app/features/category/pages/category_view.dart';
import 'package:e_commerce_app/features/favorite/pages/favorite_view.dart';
import 'package:e_commerce_app/features/home/pages/home_view.dart';
import 'package:e_commerce_app/features/user_information/pages/user_view.dart';
import 'package:flutter/material.dart';

class LayoutView extends StatefulWidget {
  const LayoutView({Key? key}) : super(key: key);

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  int currentIndex = 0;

  List<Widget> screens = [
    const HomeView(),
    const CategoryView(),
    const FavoriteView(),
    const UserView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title:
            Image.asset('asset/images/logo.png', fit: BoxFit.cover, height: 30),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: screens[currentIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(15.0),
          topRight: Radius.circular(15.0),
        ),
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset('asset/images/home_icon.png'),
              label: 'Home',
              activeIcon: Image.asset('asset/images/home_active.png'),
            ),
            BottomNavigationBarItem(
              icon: Image.asset('asset/images/category.png'),
              label: 'category',
              activeIcon: Image.asset('asset/images/category_active.png'),
            ),
            BottomNavigationBarItem(
              icon: Image.asset('asset/images/favorite_icon.png'),
              label: 'favorite',
              activeIcon: Image.asset('asset/images/favorite_active.png'),
            ),
            BottomNavigationBarItem(
              icon: Image.asset('asset/images/user_icon.png'),
              label: 'Home',
              activeIcon: Image.asset('asset/images/user_active.png'),
            ),
          ],
        ),
      ),
    );
  }
}
