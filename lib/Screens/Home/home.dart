// ignore_for_file: use_full_hex_values_for_flutter_colors

import 'dart:ui';

import 'package:dailyplus/Constants/colors.dart';
import 'package:dailyplus/Screens/Add/add.dart';
import 'package:dailyplus/Widgets/mytext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyCustomColors().kBGColor,
      appBar: AppBar(
        backgroundColor: MyCustomColors().kBGColor,
        surfaceTintColor: MyCustomColors().kBGColor,
        shadowColor: MyCustomColors().kBGColor,
        elevation: 3,
        leading: Padding(
          padding: const EdgeInsets.all(14.0),
          child: SvgPicture.asset(
            'assets/icons/list.svg',
            width: 20,
            fit: BoxFit.fill,
          ),
        ),
        actions: [
          SvgPicture.asset(
            'assets/icons/search.svg',
            width: 26,
            fit: BoxFit.fill,
          ),
          SizedBox(
            width: 14,
          ),
          SvgPicture.asset(
            'assets/icons/support.svg',
            width: 26,
            fit: BoxFit.fill,
          ),
          SizedBox(
            width: 14,
          ),
          SvgPicture.asset(
            'assets/icons/more.svg',
            width: 26,
            fit: BoxFit.fill,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 65,
                      height: 26,
                      decoration: BoxDecoration(
                        color: MyCustomColors().kPrimaryColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: mytext(
                          'All',
                          15,
                          FontWeight.w400,
                          MyCustomColors().kSecondry2Color,
                          TextAlign.center,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      width: 76,
                      height: 26,
                      decoration: BoxDecoration(
                        color: Color(0xffDADADA).withOpacity(0.45),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: mytext(
                          'Work',
                          15,
                          FontWeight.w400,
                          Color(0xffA7A3A394).withOpacity(0.55),
                          TextAlign.center,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      width: 80,
                      height: 26,
                      decoration: BoxDecoration(
                        color: Color(0xffDADADA).withOpacity(0.45),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: mytext(
                          'Personal',
                          15,
                          FontWeight.w400,
                          Color(0xffA7A3A394).withOpacity(0.55),
                          TextAlign.center,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      width: 80,
                      height: 26,
                      decoration: BoxDecoration(
                        color: Color(0xffDADADA).withOpacity(0.45),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: mytext(
                          'Birthday',
                          15,
                          FontWeight.w400,
                          Color(0xffA7A3A394).withOpacity(0.55),
                          TextAlign.center,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  mytext(
                    'Today',
                    20,
                    FontWeight.w400,
                    Color(0xff90B3CF),
                    TextAlign.start,
                  ),
                  SvgPicture.asset(
                    'assets/icons/arrowup.svg',
                    fit: BoxFit.fill,
                    width: 24,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width,
                    height: 70,
                    margin: EdgeInsets.symmetric(horizontal: 0, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: const Color(0xffC5D9E0),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          offset: Offset(0, 4),
                          blurRadius: 4,
                          spreadRadius: 0,
                        ),
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          offset: Offset(0, -4),
                          blurRadius: 4,
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SvgPicture.asset(
                              'assets/icons/uncheck.svg',
                              fit: BoxFit.fill,
                              width: 38,
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SvgPicture.asset(
                                      'assets/icons/drink.svg',
                                      fit: BoxFit.fill,
                                      width: 20,
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    mytext(
                                      'Drink water, keep heality',
                                      16,
                                      FontWeight.w400,
                                      Colors.black,
                                      TextAlign.start,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    mytext(
                                      ' 1/5 Times',
                                      12,
                                      FontWeight.w400,
                                      Colors.black,
                                      TextAlign.start,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    SvgPicture.asset(
                                      'assets/icons/noti.svg',
                                      fit: BoxFit.fill,
                                      width: 16,
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    SvgPicture.asset(
                                      'assets/icons/reuse.svg',
                                      fit: BoxFit.fill,
                                      width: 16,
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                        SvgPicture.asset(
                          'assets/icons/next.svg',
                          fit: BoxFit.fill,
                          width: 30,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  mytext(
                    'Done',
                    20,
                    FontWeight.w400,
                    Color(0xff90B3CF),
                    TextAlign.start,
                  ),
                  SvgPicture.asset(
                    'assets/icons/arrowup.svg',
                    fit: BoxFit.fill,
                    width: 24,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width,
                    height: 70,
                    margin: EdgeInsets.symmetric(horizontal: 0, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: const Color(0xffC5D9E0),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          offset: Offset(0, 4),
                          blurRadius: 4,
                          spreadRadius: 0,
                        ),
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          offset: Offset(0, -4),
                          blurRadius: 4,
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SvgPicture.asset(
                              'assets/icons/ccheck.svg',
                              fit: BoxFit.fill,
                              width: 38,
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      'assets/images/h8.png',
                                      fit: BoxFit.fill,
                                      width: 20,
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    mytext(
                                      'Go exercising',
                                      16,
                                      FontWeight.w400,
                                      Colors.black,
                                      TextAlign.start,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    mytext(
                                      ' 7:00 am',
                                      12,
                                      FontWeight.w400,
                                      Colors.black,
                                      TextAlign.start,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    SvgPicture.asset(
                                      'assets/icons/noti.svg',
                                      fit: BoxFit.fill,
                                      width: 16,
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    SvgPicture.asset(
                                      'assets/icons/reuse.svg',
                                      fit: BoxFit.fill,
                                      width: 16,
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                        SvgPicture.asset(
                          'assets/icons/next.svg',
                          fit: BoxFit.fill,
                          width: 30,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width,
                    height: 70,
                    margin: EdgeInsets.symmetric(horizontal: 0, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: const Color(0xffC5D9E0),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          offset: Offset(0, 4),
                          blurRadius: 4,
                          spreadRadius: 0,
                        ),
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          offset: Offset(0, -4),
                          blurRadius: 4,
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SvgPicture.asset(
                              'assets/icons/ccheck.svg',
                              fit: BoxFit.fill,
                              width: 38,
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      'assets/images/h9.png',
                                      fit: BoxFit.fill,
                                      width: 20,
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    mytext(
                                      'Swimming',
                                      16,
                                      FontWeight.w400,
                                      Colors.black,
                                      TextAlign.start,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    mytext(
                                      ' 8:00 am',
                                      12,
                                      FontWeight.w400,
                                      Colors.black,
                                      TextAlign.start,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    SvgPicture.asset(
                                      'assets/icons/noti.svg',
                                      fit: BoxFit.fill,
                                      width: 16,
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    SvgPicture.asset(
                                      'assets/icons/reuse.svg',
                                      fit: BoxFit.fill,
                                      width: 16,
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                        SvgPicture.asset(
                          'assets/icons/next.svg',
                          fit: BoxFit.fill,
                          width: 30,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddScreen(),
            ),
          );
        },
        child: Image.asset(
          'assets/images/add.png',
          width: 68,
          height: 68,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
