import 'dart:async';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clon_app/screen/onbaordingscreen.dart';
import 'package:whatsapp_ui_clon_app/widgets/UIhelper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Onbaordingscreen(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 120,
              width: 120,
              // color: Colors.grey,,
              child: Image.asset(
                'assets/images/whatsapp 1.png',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            // Text(
            //   'WhatsApp',
            //   style: TextStyle(
            //       color: Colors.black,
            //       fontSize: 25,
            //       fontWeight: FontWeight.w700),
            // )
            UiHelper.CustomText(
                text: "WhatsApp", height: 18, fontweight: FontWeight.bold)
          ],
        ),
      ),
    );
  }
}
