import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';
import '../themes/app_colors.dart';
import '../themes/app_textStyle.dart';

class BottomNavAppBar extends StatefulWidget {
  const BottomNavAppBar({super.key});

  @override
  State<BottomNavAppBar> createState() => _BottomNavAppBarState();
}

class _BottomNavAppBarState extends State<BottomNavAppBar> {
  final List<Widget> _bottomNavItem = [
   SizedBox(),
   SizedBox(),
   SizedBox(),
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
        key: _scaffoldKey,
        backgroundColor: const Color(0xffFFFFFF),
        body: _bottomNavItem[_currentIndex],
        bottomNavigationBar: BottomAppBar(
          surfaceTintColor: Colors.white,
          color: AppColors.primaryWhite,
          padding: EdgeInsets.zero,
          height: 70,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            decoration: BoxDecoration(
                color: AppColors.mainColor,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BottomTab(
                  onTap: () {
                    onTabTapped(0);
                  },
                  activeColor: _currentIndex == 0
                      ? AppColors.primaryWhite
                      : AppColors.mainColor,
                  title: 'Home',
                  icon: 'assets/images/nav_bar/home 1.svg',
                ),
                BottomTab(
                  onTap: () {
                    onTabTapped(1);
                  },
                  activeColor: _currentIndex == 1
                      ? AppColors.primaryWhite
                      : AppColors.mainColor,
                  title: 'Order',
                  icon: 'assets/images/nav_bar/order.svg',
                ),
                BottomTab(
                  onTap: () {
                    onTabTapped(2);
                  },
                  activeColor: _currentIndex == 2
                      ? AppColors.primaryWhite
                      : AppColors.mainColor,
                  title: 'Profile',
                  icon: 'assets/images/nav_bar/Vector.svg',
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
  final String title;
  final Color activeColor;
  final String icon;
  final VoidCallback onTap;

  const BottomTab({
    super.key,
    required this.title,
    required this.activeColor,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          SvgPicture.asset(
            icon,
            height: 25,
            width: 25,
            fit: BoxFit.cover,
            color: activeColor,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            title,
            style: AppTextStyles.regularStyle.copyWith(color: activeColor),
          )
        ],
      ),
    );
  }
}
