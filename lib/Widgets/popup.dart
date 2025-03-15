import 'package:dailyplus/Constants/colors.dart';
import 'package:dailyplus/Screens/Page/page.dart';
import 'package:dailyplus/Widgets/mybutton.dart';
import 'package:flutter/material.dart';

class DeletePopup {
  void showDeleteAccountDialog(BuildContext context, String heading,
      String message, Function() callback) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          title: Column(
            children: [
              const SizedBox(height: 8),
              Text(
                heading,
                style: const TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                message,
                style: const TextStyle(
                    color: Color(0xff212121),
                    fontSize: 16,
                    fontWeight: FontWeight.w300),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          actions: [
            Column(
              children: [
                RoundButton(
                  text: 'No',
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  backgroundColor: MyCustomColors().kBGColor,
                  borderColor: MyCustomColors().kBlackColor,
                  height: 50,
                  width: MediaQuery.sizeOf(context).width,
                  radius: 100,
                  onClick: () {
                    Navigator.pop(context);
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                RoundButton(
                  text: 'Yes',
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  backgroundColor: MyCustomColors().kPrimaryColor,
                  borderColor: MyCustomColors().kPrimaryColor,
                  height: 50,
                  width: MediaQuery.sizeOf(context).width,
                  radius: 100,
                  onClick: () {
                    callback();
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BottomBarWithPages(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
          contentPadding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
        );
      },
    );
  }
}
