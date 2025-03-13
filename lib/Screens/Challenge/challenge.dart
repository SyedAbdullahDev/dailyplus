// ignore_for_file: use_full_hex_values_for_flutter_colors
import 'package:dailyplus/Constants/colors.dart';
import 'package:dailyplus/Widgets/mybutton.dart';
import 'package:dailyplus/Widgets/mytext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ChallengeScreen extends StatefulWidget {
  const ChallengeScreen({super.key});

  @override
  State<ChallengeScreen> createState() => _ChallengeScreenState();
}

class _ChallengeScreenState extends State<ChallengeScreen> {
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  mytext(
                    'Challenge',
                    24,
                    FontWeight.w400,
                    Color.fromARGB(255, 0, 0, 0),
                    TextAlign.center,
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: MediaQuery.sizeOf(context).width,
                padding: const EdgeInsets.symmetric(
                  vertical: 5.0,
                  horizontal: 16,
                ),
                height: 140,
                decoration: BoxDecoration(
                    color: MyCustomColors().kPrimaryColor,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Color(0xffA0C0CB),
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        mytext(
                          'Real-Time 7-day Challenge',
                          13,
                          FontWeight.w400,
                          Colors.black,
                          TextAlign.center,
                        ),
                        mytext(
                          'Bedtime Routine\nChallenge',
                          20,
                          FontWeight.w400,
                          MyCustomColors().kSecondryColor,
                          TextAlign.center,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        RoundButton(
                          text: 'Join Now',
                          backgroundColor: MyCustomColors().kSecondryColor,
                          borderColor: MyCustomColors().kSecondryColor,
                          height: 20,
                          width: 90,
                          radius: 20,
                          onClick: () {},
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ],
                    ),
                    Image.asset(
                      'assets/images/c1.png',
                      fit: BoxFit.fill,
                      width: MediaQuery.sizeOf(context).width / 3.2,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                width: MediaQuery.sizeOf(context).width,
                padding: const EdgeInsets.symmetric(
                  vertical: 5.0,
                  horizontal: 16,
                ),
                height: 140,
                decoration: BoxDecoration(
                    color: MyCustomColors().kPrimaryColor,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Color(0xffA0C0CB),
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        mytext(
                          'Real-Time 7-day Challenge',
                          13,
                          FontWeight.w400,
                          Colors.black,
                          TextAlign.center,
                        ),
                        mytext(
                          'Fresh Morning\nChallenge',
                          20,
                          FontWeight.w400,
                          MyCustomColors().kSecondryColor,
                          TextAlign.center,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        RoundButton(
                          text: 'Join Now',
                          backgroundColor: MyCustomColors().kSecondryColor,
                          borderColor: MyCustomColors().kSecondryColor,
                          height: 20,
                          width: 90,
                          radius: 20,
                          onClick: () {},
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ],
                    ),
                    Image.asset(
                      'assets/images/c2.png',
                      fit: BoxFit.fill,
                      width: MediaQuery.sizeOf(context).width / 3.2,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                width: MediaQuery.sizeOf(context).width,
                padding: const EdgeInsets.symmetric(
                  vertical: 5.0,
                  horizontal: 16,
                ),
                height: 140,
                decoration: BoxDecoration(
                    color: MyCustomColors().kPrimaryColor,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Color(0xffA0C0CB),
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        mytext(
                          'Real-Time 7-day Challenge',
                          13,
                          FontWeight.w400,
                          Colors.black,
                          TextAlign.center,
                        ),
                        mytext(
                          'Serenity\nChallenge',
                          20,
                          FontWeight.w400,
                          MyCustomColors().kSecondryColor,
                          TextAlign.center,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        RoundButton(
                          text: 'Join Now',
                          backgroundColor: MyCustomColors().kSecondryColor,
                          borderColor: MyCustomColors().kSecondryColor,
                          height: 20,
                          width: 90,
                          radius: 20,
                          onClick: () {},
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ],
                    ),
                    Image.asset(
                      'assets/images/c3.png',
                      fit: BoxFit.fill,
                      width: MediaQuery.sizeOf(context).width / 3.2,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                width: MediaQuery.sizeOf(context).width,
                padding: const EdgeInsets.symmetric(
                  vertical: 5.0,
                  horizontal: 16,
                ),
                height: 140,
                decoration: BoxDecoration(
                    color: MyCustomColors().kPrimaryColor,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Color(0xffA0C0CB),
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        mytext(
                          'Real-Time 7-day Challenge',
                          13,
                          FontWeight.w400,
                          Colors.black,
                          TextAlign.center,
                        ),
                        mytext(
                          'Sport\nChallenge',
                          20,
                          FontWeight.w400,
                          MyCustomColors().kSecondryColor,
                          TextAlign.center,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        RoundButton(
                          text: 'Join Now',
                          backgroundColor: MyCustomColors().kSecondryColor,
                          borderColor: MyCustomColors().kSecondryColor,
                          height: 20,
                          width: 90,
                          radius: 20,
                          onClick: () {},
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ],
                    ),
                    Image.asset(
                      'assets/images/c4.png',
                      fit: BoxFit.fill,
                      width: MediaQuery.sizeOf(context).width / 3.2,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
