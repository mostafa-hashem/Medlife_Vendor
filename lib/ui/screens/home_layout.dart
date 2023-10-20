import 'package:flutter/material.dart';
import 'package:medlife_v2/features/profile/ui/screens/profile_screen.dart';
import 'package:medlife_v2/ui/resources/app_colors.dart';
import 'package:medlife_v2/features/home/ui/screens/home_screen.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout();

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int currentIndex = 0;
  final List<Widget> screens = [
    const HomeScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        extendBody: true,
        body: screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          backgroundColor: AppColors.primary,
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          items: [
            BottomNavigationBarItem(
              icon: currentIndex == 0
                  ? Image.asset("assets/images/selected_home.png")
                  : Image.asset("assets/images/unSelected_home.png"),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: currentIndex == 1
                  ? Image.asset("assets/images/selected_profile.png")
                  : Image.asset("assets/images/unSelectedProfile.png"),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
