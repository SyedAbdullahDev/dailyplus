import 'package:dailyplus/Constants/colors.dart';
import 'package:dailyplus/Controllers/auth.dart';
import 'package:dailyplus/Screens/Auth/sign_up.dart';
import 'package:dailyplus/Screens/Page/page.dart';
import 'package:dailyplus/Widgets/mybutton.dart';
import 'package:dailyplus/Widgets/mytext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool hidePassword = true;
  String error = "";
  bool isLoading = false;
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  TextEditingController emailcontroller = TextEditingController();
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
              margin: EdgeInsets.zero,
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
                      'Login',
                      32,
                      FontWeight.w400,
                      MyCustomColors().kBlackColor,
                      TextAlign.center,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        mytext(
                          'Mobile number or email',
                          14,
                          FontWeight.w400,
                          const Color(0xff000000),
                          TextAlign.start,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    TextFormField(
                      controller: emailcontroller,
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(color: MyCustomColors().kBlackColor),
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 1.5,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                          borderRadius: BorderRadius.circular(
                            15,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 1.5,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                          borderRadius: BorderRadius.circular(
                            15,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 1.5,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                          borderRadius: BorderRadius.circular(
                            15,
                          ),
                        ),
                        fillColor: Colors.transparent,
                        filled: true,
                        hintText: '05********* Or a***@gmail.com',
                        hintStyle: const TextStyle(
                          color: Color(
                            0xff94A3B8,
                          ),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Incorrect email. Please check your email.';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        mytext(
                          'Password',
                          14,
                          FontWeight.w400,
                          const Color(0xff000000),
                          TextAlign.start,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      obscureText: hidePassword,
                      controller: passwordcontroller,
                      style: TextStyle(color: MyCustomColors().kBlackColor),
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 1.5,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                          borderRadius: BorderRadius.circular(
                            15,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 1.5,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                          borderRadius: BorderRadius.circular(
                            15,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 1.5,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                          borderRadius: BorderRadius.circular(
                            15,
                          ),
                        ),
                        fillColor: Colors.transparent,
                        filled: true,
                        hintStyle: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffA7A3A3),
                        ),
                        hintText: '*********',
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
                      height: 15,
                    ),
                    RoundButton(
                      text: 'Login',
                      loading: isLoading,
                      color: MyCustomColors().kPrimary2Color,
                      backgroundColor: MyCustomColors().kSecondryColor,
                      borderColor: MyCustomColors().kSecondryColor,
                      height: 42,
                      width: 155,
                      radius: 20,
                      onClick: () async {
                        setState(() {
                          isLoading = true;
                        });

                        if (globalKey.currentState!.validate()) {
                          error = await AuthController().loginuser(
                            emailcontroller.text,
                            passwordcontroller.text,
                          );

                          if (error != "") {
                            Fluttertoast.showToast(msg: error);
                          }

                          if (error == "") {
                            Fluttertoast.showToast(
                                msg: "Logged in successfully");
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 8.0),
                            height: 0.6,
                            color: MyCustomColors().kGreyColor,
                          ),
                        ),
                        mytext(
                          'Or',
                          12,
                          FontWeight.w500,
                          MyCustomColors().kGreyColor,
                          TextAlign.center,
                        ),
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 8.0),
                            height: 0.6,
                            color: MyCustomColors().kGreyColor,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    RoundButton3(
                      textColor: Colors.black,
                      backgroundColor: MyCustomColors().kPrimaryColor,
                      borderColor: MyCustomColors().kBlackColor,
                      height: 45,
                      width: MediaQuery.sizeOf(context).width / 1.3,
                      radius: 10,
                      onClick: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/icons/google.svg',
                            fit: BoxFit.fill,
                            width: 16,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          mytext(
                            'Continue with Google',
                            14,
                            FontWeight.w400,
                            Colors.black,
                            TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    RoundButton3(
                      textColor: Colors.white,
                      backgroundColor: MyCustomColors().kBlackColor,
                      borderColor: MyCustomColors().kBlackColor,
                      height: 45,
                      width: MediaQuery.sizeOf(context).width / 1.3,
                      radius: 10,
                      onClick: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/icons/apple.svg',
                            fit: BoxFit.fill,
                            width: 16,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          mytext(
                            'Continue with Apple',
                            14,
                            FontWeight.w400,
                            Colors.white,
                            TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    RoundButton3(
                      textColor: Colors.white,
                      backgroundColor: MyCustomColors().kPrimaryColor,
                      borderColor: MyCustomColors().kPrimary2Color,
                      height: 45,
                      width: MediaQuery.sizeOf(context).width / 1.3,
                      radius: 10,
                      onClick: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUpScreen(),
                          ),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          mytext(
                            'Create a new account',
                            14,
                            FontWeight.w400,
                            MyCustomColors().kPrimary2Color,
                            TextAlign.center,
                          ),
                        ],
                      ),
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
