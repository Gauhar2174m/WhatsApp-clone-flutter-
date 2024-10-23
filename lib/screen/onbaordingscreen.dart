import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clon_app/screen/login.dart';
import 'package:whatsapp_ui_clon_app/widgets/UIhelper.dart';

class Onbaordingscreen extends StatefulWidget {
  const Onbaordingscreen({super.key});

  @override
  State<Onbaordingscreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Onbaordingscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 250,
              width: 250,
              child: Image.asset(
                'assets/images/image 1.png',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            UiHelper.CustomText(
                text: "Welcome to WhatsApp",
                height: 20,
                color: Color(0XFF000000),
                fontweight: FontWeight.w400),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomText(
                    text: "Read out", height: 16, fontweight: FontWeight.w400),
                UiHelper.CustomText(
                    text: " Privacy Policy.",
                    height: 14,
                    color: Color(0XFF0C42CC)),
                UiHelper.CustomText(
                  text: " Tap “Agree and continue”",
                  height: 14,
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomText(
                  text: "to accept the",
                  height: 14,
                ),
                UiHelper.CustomText(
                    text: " Teams of Service.",
                    height: 14,
                    color: Color(0XFF0C42CC)),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: UiHelper.CustomButton(
          callback: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginScreen(),
                ));
          },
          Buttonname: "Agree And continue",
          color: Color(0XFF00A884)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
