import 'package:dailyplus/Constants/colors.dart';
import 'package:dailyplus/Screens/Calender/calender.dart';
import 'package:dailyplus/Screens/Challenge/challenge.dart';
import 'package:dailyplus/Screens/Home/home.dart';
import 'package:dailyplus/Screens/Mine/mine.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomBarWithPages extends StatefulWidget {
  const BottomBarWithPages({super.key});

  @override
  _BottomBarWithPagesState createState() => _BottomBarWithPagesState();
}

class _BottomBarWithPagesState extends State<BottomBarWithPages> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomeScreen(),
    ChallengeScreen(),
    CalenderScreen(),
    MineScreen(),
  ];

  final List<BottomNavigationBarItem> _bottomNavItems = [
    BottomNavigationBarItem(
      icon: SvgPicture.asset(
        'assets/icons/home.svg',
        width: 28,
        height: 28,
        color: MyCustomColors().kBlackColor,
      ),
      activeIcon: SvgPicture.asset(
        'assets/icons/home.svg',
        width: 28,
        height: 28,
        color: MyCustomColors().kSecondryColor,
      ),
      label: 'Tasks',
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset(
        'assets/icons/chall.svg',
        width: 28,
        height: 28,
        color: MyCustomColors().kBlackColor,
      ),
      activeIcon: SvgPicture.asset(
        'assets/icons/chall.svg',
        width: 28,
        height: 28,
        color: MyCustomColors().kSecondryColor,
      ),
      label: 'Challenge',
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset(
        'assets/icons/cal.svg',
        width: 28,
        height: 28,
        color: MyCustomColors().kBlackColor,
      ),
      activeIcon: SvgPicture.asset(
        'assets/icons/cal.svg',
        width: 28,
        height: 28,
        color: MyCustomColors().kSecondryColor,
      ),
      label: 'Calendar',
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset(
        'assets/icons/mine.svg',
        width: 28,
        height: 28,
        color: MyCustomColors().kBlackColor,
      ),
      activeIcon: SvgPicture.asset(
        'assets/icons/mine.svg',
        width: 28,
        height: 28,
        color: MyCustomColors().kSecondryColor,
      ),
      label: 'Mine',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        height: 92,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 2,
          ),
        ),
        child: BottomNavigationBar(
          elevation: 0,
          backgroundColor: Colors.white,
          items: _bottomNavItems,
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          selectedItemColor: MyCustomColors().kSecondryColor,
          unselectedItemColor: MyCustomColors().kBlackColor,
          enableFeedback: false,
          showSelectedLabels: true,
          selectedLabelStyle: GoogleFonts.itim(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: MyCustomColors().kSecondryColor,
          ),
          unselectedLabelStyle: GoogleFonts.itim(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: MyCustomColors().kBlackColor,
          ),
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
        ),
      ),
    );
  }
}
