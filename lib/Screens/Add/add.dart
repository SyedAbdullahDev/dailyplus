// ignore_for_file: use_full_hex_values_for_flutter_colors
import 'package:dailyplus/Constants/colors.dart';
import 'package:dailyplus/Widgets/mytext.dart';
import 'package:flutter/material.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({super.key});

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyCustomColors().kBGColor,
      appBar: AppBar(
        backgroundColor: MyCustomColors().kBGColor,
        surfaceTintColor: MyCustomColors().kBGColor,
        shadowColor: MyCustomColors().kBGColor,
        elevation: 3,
        leading: InkWell(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 16,
          ),
        ),
        centerTitle: true,
        title: mytext(
          'Add Habits',
          24,
          FontWeight.w400,
          Colors.black,
          TextAlign.center,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  mytext(
                    'Health',
                    16,
                    FontWeight.w400,
                    Color.fromARGB(255, 0, 0, 0),
                    TextAlign.center,
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                width: MediaQuery.sizeOf(context).width,
                padding: const EdgeInsets.symmetric(
                  vertical: 5.0,
                  horizontal: 16,
                ),
                height: 64,
                decoration: BoxDecoration(
                  color: MyCustomColors().kPrimaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/h1.png',
                          fit: BoxFit.fill,
                          width: 38,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        mytext(
                          'Drink water',
                          17,
                          FontWeight.w400,
                          Colors.black,
                          TextAlign.start,
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 17,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                width: MediaQuery.sizeOf(context).width,
                padding: const EdgeInsets.symmetric(
                  vertical: 5.0,
                  horizontal: 16,
                ),
                height: 64,
                decoration: BoxDecoration(
                  color: MyCustomColors().kPrimaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/h2.png',
                          fit: BoxFit.fill,
                          width: 38,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        mytext(
                          'Eat fruits',
                          17,
                          FontWeight.w400,
                          Colors.black,
                          TextAlign.start,
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 17,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                width: MediaQuery.sizeOf(context).width,
                padding: const EdgeInsets.symmetric(
                  vertical: 5.0,
                  horizontal: 16,
                ),
                height: 64,
                decoration: BoxDecoration(
                  color: MyCustomColors().kPrimaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/h3.png',
                          fit: BoxFit.fill,
                          width: 38,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        mytext(
                          'Take a break',
                          17,
                          FontWeight.w400,
                          Colors.black,
                          TextAlign.start,
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 17,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                width: MediaQuery.sizeOf(context).width,
                padding: const EdgeInsets.symmetric(
                  vertical: 5.0,
                  horizontal: 16,
                ),
                height: 64,
                decoration: BoxDecoration(
                  color: MyCustomColors().kPrimaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/h4.png',
                          fit: BoxFit.fill,
                          width: 38,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        mytext(
                          'Take pill  reminder',
                          17,
                          FontWeight.w400,
                          Colors.black,
                          TextAlign.start,
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 17,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  mytext(
                    'Life',
                    16,
                    FontWeight.w400,
                    Color.fromARGB(255, 0, 0, 0),
                    TextAlign.center,
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                width: MediaQuery.sizeOf(context).width,
                padding: const EdgeInsets.symmetric(
                  vertical: 5.0,
                  horizontal: 16,
                ),
                height: 64,
                decoration: BoxDecoration(
                  color: MyCustomColors().kPrimaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/h5.png',
                          fit: BoxFit.fill,
                          width: 38,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        mytext(
                          'Go shopping',
                          17,
                          FontWeight.w400,
                          Colors.black,
                          TextAlign.start,
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 17,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                width: MediaQuery.sizeOf(context).width,
                padding: const EdgeInsets.symmetric(
                  vertical: 5.0,
                  horizontal: 16,
                ),
                height: 64,
                decoration: BoxDecoration(
                  color: MyCustomColors().kPrimaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/h6.png',
                          fit: BoxFit.fill,
                          width: 38,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        mytext(
                          'Study',
                          17,
                          FontWeight.w400,
                          Colors.black,
                          TextAlign.start,
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 17,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                width: MediaQuery.sizeOf(context).width,
                padding: const EdgeInsets.symmetric(
                  vertical: 5.0,
                  horizontal: 16,
                ),
                height: 64,
                decoration: BoxDecoration(
                  color: MyCustomColors().kPrimaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/h7.png',
                          fit: BoxFit.fill,
                          width: 38,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        mytext(
                          'Learn a foreign language',
                          17,
                          FontWeight.w400,
                          Colors.black,
                          TextAlign.start,
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 17,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  mytext(
                    'Sports',
                    16,
                    FontWeight.w400,
                    Color.fromARGB(255, 0, 0, 0),
                    TextAlign.center,
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                width: MediaQuery.sizeOf(context).width,
                padding: const EdgeInsets.symmetric(
                  vertical: 5.0,
                  horizontal: 16,
                ),
                height: 64,
                decoration: BoxDecoration(
                  color: MyCustomColors().kPrimaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/h8.png',
                          fit: BoxFit.fill,
                          width: 38,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        mytext(
                          'Go exercising',
                          17,
                          FontWeight.w400,
                          Colors.black,
                          TextAlign.start,
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 17,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                width: MediaQuery.sizeOf(context).width,
                padding: const EdgeInsets.symmetric(
                  vertical: 5.0,
                  horizontal: 16,
                ),
                height: 64,
                decoration: BoxDecoration(
                  color: MyCustomColors().kPrimaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/h9.png',
                          fit: BoxFit.fill,
                          width: 38,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        mytext(
                          'Swimming',
                          17,
                          FontWeight.w400,
                          Colors.black,
                          TextAlign.start,
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 17,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                width: MediaQuery.sizeOf(context).width,
                padding: const EdgeInsets.symmetric(
                  vertical: 5.0,
                  horizontal: 16,
                ),
                height: 64,
                decoration: BoxDecoration(
                  color: MyCustomColors().kPrimaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/h10.png',
                          fit: BoxFit.fill,
                          width: 38,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        mytext(
                          'Cycling',
                          17,
                          FontWeight.w400,
                          Colors.black,
                          TextAlign.start,
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 17,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                width: MediaQuery.sizeOf(context).width,
                padding: const EdgeInsets.symmetric(
                  vertical: 5.0,
                  horizontal: 16,
                ),
                height: 64,
                decoration: BoxDecoration(
                  color: MyCustomColors().kPrimaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/h11.png',
                          fit: BoxFit.fill,
                          width: 38,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        mytext(
                          'Stretch',
                          17,
                          FontWeight.w400,
                          Colors.black,
                          TextAlign.start,
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 17,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  mytext(
                    'Mind',
                    16,
                    FontWeight.w400,
                    Color.fromARGB(255, 0, 0, 0),
                    TextAlign.center,
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                width: MediaQuery.sizeOf(context).width,
                padding: const EdgeInsets.symmetric(
                  vertical: 5.0,
                  horizontal: 16,
                ),
                height: 64,
                decoration: BoxDecoration(
                  color: MyCustomColors().kPrimaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/h12.png',
                          fit: BoxFit.fill,
                          width: 38,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        mytext(
                          'Meditation',
                          17,
                          FontWeight.w400,
                          Colors.black,
                          TextAlign.start,
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 17,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                width: MediaQuery.sizeOf(context).width,
                padding: const EdgeInsets.symmetric(
                  vertical: 5.0,
                  horizontal: 16,
                ),
                height: 64,
                decoration: BoxDecoration(
                  color: MyCustomColors().kPrimaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/h13.png',
                          fit: BoxFit.fill,
                          width: 38,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        mytext(
                          'Pray',
                          17,
                          FontWeight.w400,
                          Colors.black,
                          TextAlign.start,
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 17,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  mytext(
                    'Quit',
                    16,
                    FontWeight.w400,
                    Color.fromARGB(255, 0, 0, 0),
                    TextAlign.center,
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                width: MediaQuery.sizeOf(context).width,
                padding: const EdgeInsets.symmetric(
                  vertical: 5.0,
                  horizontal: 16,
                ),
                height: 64,
                decoration: BoxDecoration(
                  color: MyCustomColors().kPrimaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/h14.png',
                          fit: BoxFit.fill,
                          width: 38,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        mytext(
                          'Less time on your phone',
                          17,
                          FontWeight.w400,
                          Colors.black,
                          TextAlign.start,
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 17,
                      color: Colors.black,
                    )
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
