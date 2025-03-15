// ignore_for_file: use_full_hex_values_for_flutter_colors
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dailyplus/Constants/colors.dart';
import 'package:dailyplus/Widgets/mytext.dart';
import 'package:dailyplus/Widgets/popup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
              InkWell(
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                onTap: () {
                  DeletePopup().showDeleteAccountDialog(
                    context,
                    'Confirm popup',
                    'Are you sure, You want to add this habit',
                    () async {
                      try {
                        await FirebaseFirestore.instance
                            .collection('habits')
                            .doc()
                            .set({
                          'uid': FirebaseAuth.instance.currentUser!.uid,
                          'title': 'Drink water',
                          'hid': FirebaseFirestore.instance
                              .collection('habits')
                              .doc()
                              .id
                              .toString(),
                          'isdone': false,
                          'image': 'assets/images/h1.png',
                          'createdAt': FieldValue.serverTimestamp(),
                        });
                      } catch (e) {
                        Fluttertoast.showToast(
                            msg:
                                'Unexpected error occured, Please try again later');
                      }
                    },
                  );
                },
                child: Container(
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
              ),
              SizedBox(
                height: 8,
              ),
              InkWell(
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                onTap: () {
                  DeletePopup().showDeleteAccountDialog(
                    context,
                    'Confirm popup',
                    'Are you sure, You want to add this habit',
                    () async {
                      try {
                        await FirebaseFirestore.instance
                            .collection('habits')
                            .doc()
                            .set({
                          'uid': FirebaseAuth.instance.currentUser!.uid,
                          'title': 'Eat fruits',
                          'isdone': false,
                          'image': 'assets/images/h2.png',
                          'createdAt': FieldValue.serverTimestamp(),
                        });
                      } catch (e) {
                        Fluttertoast.showToast(
                            msg:
                                'Unexpected error occured, Please try again later');
                      }
                    },
                  );
                },
                child: Container(
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
              ),
              SizedBox(
                height: 8,
              ),
              InkWell(
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                onTap: () {
                  DeletePopup().showDeleteAccountDialog(
                    context,
                    'Confirm popup',
                    'Are you sure, You want to add this habit',
                    () async {
                      try {
                        await FirebaseFirestore.instance
                            .collection('habits')
                            .doc()
                            .set({
                          'uid': FirebaseAuth.instance.currentUser!.uid,
                          'title': 'Take a break',
                          'isdone': false,
                          'image': 'assets/images/h3.png',
                          'createdAt': FieldValue.serverTimestamp(),
                        });
                      } catch (e) {
                        Fluttertoast.showToast(
                            msg:
                                'Unexpected error occured, Please try again later');
                      }
                    },
                  );
                },
                child: Container(
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
              ),
              SizedBox(
                height: 8,
              ),
              InkWell(
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                onTap: () {
                  DeletePopup().showDeleteAccountDialog(
                    context,
                    'Confirm popup',
                    'Are you sure, You want to add this habit',
                    () async {
                      try {
                        await FirebaseFirestore.instance
                            .collection('habits')
                            .doc()
                            .set({
                          'uid': FirebaseAuth.instance.currentUser!.uid,
                          'title': 'Take pill reminder',
                          'image': 'assets/images/h4.png',
                          'isdone': false,
                          'createdAt': FieldValue.serverTimestamp(),
                        });
                      } catch (e) {
                        Fluttertoast.showToast(
                            msg:
                                'Unexpected error occured, Please try again later');
                      }
                    },
                  );
                },
                child: Container(
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
                            'Take pill reminder',
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
              InkWell(
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                onTap: () {
                  DeletePopup().showDeleteAccountDialog(
                    context,
                    'Confirm popup',
                    'Are you sure, You want to add this habit',
                    () async {
                      try {
                        await FirebaseFirestore.instance
                            .collection('habits')
                            .doc()
                            .set({
                          'uid': FirebaseAuth.instance.currentUser!.uid,
                          'title': 'Go shopping',
                          'isdone': false,
                          'image': 'assets/images/h5.png',
                          'createdAt': FieldValue.serverTimestamp(),
                        });
                      } catch (e) {
                        Fluttertoast.showToast(
                            msg:
                                'Unexpected error occured, Please try again later');
                      }
                    },
                  );
                },
                child: Container(
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
              ),
              SizedBox(
                height: 8,
              ),
              InkWell(
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                onTap: () {
                  DeletePopup().showDeleteAccountDialog(
                    context,
                    'Confirm popup',
                    'Are you sure, You want to add this habit',
                    () async {
                      try {
                        await FirebaseFirestore.instance
                            .collection('habits')
                            .doc()
                            .set({
                          'uid': FirebaseAuth.instance.currentUser!.uid,
                          'title': 'Study',
                          'isdone': false,
                          'image': 'assets/images/h6.png',
                          'createdAt': FieldValue.serverTimestamp(),
                        });
                      } catch (e) {
                        Fluttertoast.showToast(
                            msg:
                                'Unexpected error occured, Please try again later');
                      }
                    },
                  );
                },
                child: Container(
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
              ),
              SizedBox(
                height: 8,
              ),
              InkWell(
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                onTap: () {
                  DeletePopup().showDeleteAccountDialog(
                    context,
                    'Confirm popup',
                    'Are you sure, You want to add this habit',
                    () async {
                      try {
                        await FirebaseFirestore.instance
                            .collection('habits')
                            .doc()
                            .set({
                          'uid': FirebaseAuth.instance.currentUser!.uid,
                          'title': 'Learn a foreign language',
                          'image': 'assets/images/h7.png',
                          'isdone': false,
                          'createdAt': FieldValue.serverTimestamp(),
                        });
                      } catch (e) {
                        Fluttertoast.showToast(
                            msg:
                                'Unexpected error occured, Please try again later');
                      }
                    },
                  );
                },
                child: Container(
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
              InkWell(
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                onTap: () {
                  DeletePopup().showDeleteAccountDialog(
                    context,
                    'Confirm popup',
                    'Are you sure, You want to add this habit',
                    () async {
                      try {
                        await FirebaseFirestore.instance
                            .collection('habits')
                            .doc()
                            .set({
                          'uid': FirebaseAuth.instance.currentUser!.uid,
                          'title': 'Go exercising',
                          'image': 'assets/images/h8.png',
                          'isdone': false,
                          'createdAt': FieldValue.serverTimestamp(),
                        });
                      } catch (e) {
                        Fluttertoast.showToast(
                            msg:
                                'Unexpected error occured, Please try again later');
                      }
                    },
                  );
                },
                child: Container(
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
              ),
              SizedBox(
                height: 8,
              ),
              InkWell(
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                onTap: () {
                  DeletePopup().showDeleteAccountDialog(
                    context,
                    'Confirm popup',
                    'Are you sure, You want to add this habit',
                    () async {
                      try {
                        await FirebaseFirestore.instance
                            .collection('habits')
                            .doc()
                            .set({
                          'uid': FirebaseAuth.instance.currentUser!.uid,
                          'title': 'Swimming',
                          'isdone': false,
                          'image': 'assets/images/h9.png',
                          'createdAt': FieldValue.serverTimestamp(),
                        });
                      } catch (e) {
                        Fluttertoast.showToast(
                            msg:
                                'Unexpected error occured, Please try again later');
                      }
                    },
                  );
                },
                child: Container(
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
              ),
              SizedBox(
                height: 8,
              ),
              InkWell(
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                onTap: () {
                  DeletePopup().showDeleteAccountDialog(
                    context,
                    'Confirm popup',
                    'Are you sure, You want to add this habit',
                    () async {
                      try {
                        await FirebaseFirestore.instance
                            .collection('habits')
                            .doc()
                            .set({
                          'uid': FirebaseAuth.instance.currentUser!.uid,
                          'title': 'Cycling',
                          'image': 'assets/images/h10.png',
                          'createdAt': FieldValue.serverTimestamp(),
                          'isdone': false,
                        });
                      } catch (e) {
                        Fluttertoast.showToast(
                            msg:
                                'Unexpected error occured, Please try again later');
                      }
                    },
                  );
                },
                child: Container(
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
              ),
              SizedBox(
                height: 8,
              ),
              InkWell(
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                onTap: () {
                  DeletePopup().showDeleteAccountDialog(
                    context,
                    'Confirm popup',
                    'Are you sure, You want to add this habit',
                    () async {
                      try {
                        await FirebaseFirestore.instance
                            .collection('habits')
                            .doc()
                            .set({
                          'uid': FirebaseAuth.instance.currentUser!.uid,
                          'title': 'Stretch',
                          'image': 'assets/images/h11.png',
                          'isdone': false,
                          'createdAt': FieldValue.serverTimestamp(),
                        });
                      } catch (e) {
                        Fluttertoast.showToast(
                            msg:
                                'Unexpected error occured, Please try again later');
                      }
                    },
                  );
                },
                child: Container(
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
              InkWell(
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                onTap: () {
                  DeletePopup().showDeleteAccountDialog(
                    context,
                    'Confirm popup',
                    'Are you sure, You want to add this habit',
                    () async {
                      try {
                        await FirebaseFirestore.instance
                            .collection('habits')
                            .doc()
                            .set({
                          'uid': FirebaseAuth.instance.currentUser!.uid,
                          'title': 'Meditation',
                          'image': 'assets/images/h12.png',
                          'isdone': false,
                          'createdAt': FieldValue.serverTimestamp(),
                        });
                      } catch (e) {
                        Fluttertoast.showToast(
                            msg:
                                'Unexpected error occured, Please try again later');
                      }
                    },
                  );
                },
                child: Container(
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
              ),
              SizedBox(
                height: 8,
              ),
              InkWell(
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                onTap: () {
                  DeletePopup().showDeleteAccountDialog(
                    context,
                    'Confirm popup',
                    'Are you sure, You want to add this habit',
                    () async {
                      try {
                        await FirebaseFirestore.instance
                            .collection('habits')
                            .doc()
                            .set({
                          'uid': FirebaseAuth.instance.currentUser!.uid,
                          'title': 'Pray',
                          'isdone': false,
                          'image': 'assets/images/h13.png',
                          'createdAt': FieldValue.serverTimestamp(),
                        });
                      } catch (e) {
                        Fluttertoast.showToast(
                            msg:
                                'Unexpected error occured, Please try again later');
                      }
                    },
                  );
                },
                child: Container(
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
              InkWell(
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                onTap: () {
                  DeletePopup().showDeleteAccountDialog(
                    context,
                    'Confirm popup',
                    'Are you sure, You want to add this habit',
                    () async {
                      try {
                        await FirebaseFirestore.instance
                            .collection('habits')
                            .doc()
                            .set({
                          'uid': FirebaseAuth.instance.currentUser!.uid,
                          'title': 'Less time on your phone',
                          'isdone': false,
                          'image': 'assets/images/h14.png',
                          'createdAt': FieldValue.serverTimestamp(),
                        });
                      } catch (e) {
                        Fluttertoast.showToast(
                            msg:
                                'Unexpected error occured, Please try again later');
                      }
                    },
                  );
                },
                child: Container(
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
