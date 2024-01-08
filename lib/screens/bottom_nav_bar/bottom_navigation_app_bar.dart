import 'package:flutter/material.dart';
import 'package:frgaa_app/screens/bottom_nav_bar/home_screens/home_screen.dart';
import 'package:svg_flutter/svg_flutter.dart';

import '../../themes/app_colors.dart';


class BottomNavAppBar extends StatefulWidget {
  const BottomNavAppBar({super.key});

  @override
  State<BottomNavAppBar> createState() => _BottomNavAppBarState();
}

class _BottomNavAppBarState extends State<BottomNavAppBar> {
  final List<Widget> _bottomNavItem = [
    const HomeScreen(),
    const SizedBox(),
    const SizedBox(),
    const SizedBox(),
  ];
  int _currentIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        key: _scaffoldKey,
        backgroundColor: const Color(0xffFFFFFF),
        body: _bottomNavItem[_currentIndex],
        bottomNavigationBar: BottomAppBar(
          surfaceTintColor: Colors.white,
          color: AppColors.primaryWhite,
          padding: EdgeInsets.zero,
          height: 60,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            decoration: const BoxDecoration(
              color: AppColors.primaryWhite,
              boxShadow: [
                BoxShadow(
                  color: Color(0xf17000000),
                  blurRadius: 0.3,
                  spreadRadius: 0.3,

                )
              ],
           ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BottomTab(
                  onTap: () {
                    onTabTapped(0);
                  },
                  activeColor: _currentIndex == 0?
                  AppColors.mainBold
                  : AppColors.mainColor,

                  icon: 'assets/images/nav_bar/Vector.svg',
                ),
                BottomTab(
                  onTap: () {
                    onTabTapped(1);
                  },
                  activeColor: _currentIndex == 1
                      ?
                  AppColors.mainBold
                      : AppColors.mainColor,

                  icon: 'assets/images/nav_bar/search.svg',
                ),
                BottomTab(
                  onTap: () {
                    onTabTapped(2);
                  },
                  activeColor: _currentIndex == 2
                  ?AppColors.mainBold
                  : AppColors.mainColor,

                  icon: 'assets/images/nav_bar/Vector (2).svg',
                ),
                BottomTab(
                  onTap: () {
                    onTabTapped(3);
                  },
                  activeColor: _currentIndex == 3
                      ?    AppColors.mainBold
                      : AppColors.mainColor,

                  icon: 'assets/images/nav_bar/Group.svg',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BottomTab extends StatelessWidget {

  final Color activeColor;
  final String icon;
  final VoidCallback onTap;

  const BottomTab({
    super.key,

    required this.activeColor,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SvgPicture.asset(
        icon,
        height: 25,
        width: 25,
        fit: BoxFit.cover,
        color: activeColor,
      ),
    );
  }
}
