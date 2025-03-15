import 'package:dailyplus/Constants/colors.dart';
import 'package:dailyplus/Controllers/auth.dart';
import 'package:dailyplus/Screens/Page/page.dart';
import 'package:dailyplus/Widgets/mybutton.dart';
import 'package:dailyplus/Widgets/mytext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool hidePassword = true;
  bool rememberMe = true;
  String error = "";
  bool isLoading = false;

  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController firstnamecontroller = TextEditingController();
  TextEditingController lastnamecontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyCustomColors().kBGColor,
      body: SingleChildScrollView(
        padding: EdgeInsets.zero,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: Image.asset(
                    'assets/images/logo.png',
                    width: MediaQuery.sizeOf(context).width / 2.2,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Image.asset(
                    'assets/images/mainlogo.png',
                    width: MediaQuery.sizeOf(context).width / 2.5,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: (MediaQuery.sizeOf(context).height / 1.4) - 12,
              padding: EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 22,
              ),
              decoration: BoxDecoration(
                color: MyCustomColors().kPrimaryColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(70),
                  topRight: Radius.circular(70),
                ),
              ),
              child: Form(
                key: globalKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    mytext(
                      'New account',
                      24,
                      FontWeight.w400,
                      MyCustomColors().kBlackColor,
                      TextAlign.center,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: firstnamecontroller,
                            keyboardType: TextInputType.name,
                            style:
                                TextStyle(color: MyCustomColors().kBlackColor),
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  width: 1.5,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                                borderRadius: BorderRadius.circular(
                                  0,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  width: 1.5,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                                borderRadius: BorderRadius.circular(
                                  0,
                                ),
                              ),
                              border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  width: 1,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                                borderRadius: BorderRadius.circular(
                                  0,
                                ),
                              ),
                              fillColor: Colors.transparent,
                              filled: true,
                              hintText: 'a***',
                              label: mytext(
                                'First name',
                                12,
                                FontWeight.w400,
                                Colors.black,
                                TextAlign.start,
                              ),
                              hintStyle: const TextStyle(
                                color: Color(
                                  0xff94A3B8,
                                ),
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Incorrect name. Please check your name.';
                              }
                              return null;
                            },
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Expanded(
                          child: TextFormField(
                            controller: lastnamecontroller,
                            keyboardType: TextInputType.name,
                            style:
                                TextStyle(color: MyCustomColors().kBlackColor),
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  width: 1.5,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                                borderRadius: BorderRadius.circular(
                                  0,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  width: 1.5,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                                borderRadius: BorderRadius.circular(
                                  0,
                                ),
                              ),
                              border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  width: 1,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                                borderRadius: BorderRadius.circular(
                                  0,
                                ),
                              ),
                              fillColor: Colors.transparent,
                              filled: true,
                              hintText: 'a***',
                              label: mytext(
                                'Last name',
                                12,
                                FontWeight.w400,
                                Colors.black,
                                TextAlign.start,
                              ),
                              hintStyle: const TextStyle(
                                color: Color(
                                  0xff94A3B8,
                                ),
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Incorrect name. Please check your name.';
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: emailcontroller,
                      keyboardType: TextInputType.name,
                      style: TextStyle(color: MyCustomColors().kBlackColor),
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 1.5,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                          borderRadius: BorderRadius.circular(
                            0,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 1.5,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                          borderRadius: BorderRadius.circular(
                            0,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 1,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                          borderRadius: BorderRadius.circular(
                            0,
                          ),
                        ),
                        fillColor: Colors.transparent,
                        filled: true,
                        hintText: 'a***@gmail.com',
                        label: mytext(
                          'Email',
                          12,
                          FontWeight.w400,
                          Colors.black,
                          TextAlign.start,
                        ),
                        hintStyle: const TextStyle(
                          color: Color(
                            0xff94A3B8,
                          ),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Incorrect email. Please check your email.';
                        } else if (!value.contains('@')) {
                          return 'Incorrect email. Please check your email.';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: phonecontroller,
                      keyboardType: TextInputType.phone,
                      style: TextStyle(color: MyCustomColors().kBlackColor),
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 1.5,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                          borderRadius: BorderRadius.circular(
                            0,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 1.5,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                          borderRadius: BorderRadius.circular(
                            0,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 1,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                          borderRadius: BorderRadius.circular(
                            0,
                          ),
                        ),
                        fillColor: Colors.transparent,
                        filled: true,
                        hintText: '05*********',
                        label: mytext(
                          'Mobile number',
                          12,
                          FontWeight.w400,
                          Colors.black,
                          TextAlign.start,
                        ),
                        hintStyle: const TextStyle(
                          color: Color(
                            0xff94A3B8,
                          ),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Incorrect number. Please check your number.';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: passwordcontroller,
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      style: TextStyle(color: MyCustomColors().kBlackColor),
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 1.5,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                          borderRadius: BorderRadius.circular(
                            0,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 1.5,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                          borderRadius: BorderRadius.circular(
                            0,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 1,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                          borderRadius: BorderRadius.circular(
                            0,
                          ),
                        ),
                        fillColor: Colors.transparent,
                        filled: true,
                        hintText: '*********',
                        label: mytext(
                          'Password',
                          12,
                          FontWeight.w400,
                          Colors.black,
                          TextAlign.start,
                        ),
                        hintStyle: const TextStyle(
                          color: Color(
                            0xff94A3B8,
                          ),
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              hidePassword = !hidePassword;
                            });
                          },
                          icon: Icon(hidePassword
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Incorrect password. Please check your password.';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/icons/check.svg',
                          width: 24,
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        mytext('Remember Me', 12, FontWeight.w400,
                            MyCustomColors().kBlackColor, TextAlign.start),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    RoundButton(
                      text: 'Register',
                      color: MyCustomColors().kPrimary2Color,
                      backgroundColor: MyCustomColors().kSecondryColor,
                      borderColor: MyCustomColors().kSecondryColor,
                      height: 42,
                      loading: isLoading,
                      width: 160,
                      radius: 20,
                      onClick: () async {
                        setState(() {
                          isLoading = true;
                        });
                        if (globalKey.currentState!.validate()) {
                          error = await AuthController().createUser(
                            emailcontroller.text,
                            passwordcontroller.text,
                            firstnamecontroller.text,
                            lastnamecontroller.text,
                            phonecontroller.text,
                          );

                          if (error != "") {
                            Fluttertoast.showToast(msg: error);
                          }
                          if (error == "") {
                            Fluttertoast.showToast(
                                msg: "Account created successfully");
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BottomBarWithPages(),
                              ),
                            );
                          }
                          setState(() {
                            isLoading = false;
                          });
                        } else {
                          setState(() {
                            isLoading = false;
                          });
                        }
                      },
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
