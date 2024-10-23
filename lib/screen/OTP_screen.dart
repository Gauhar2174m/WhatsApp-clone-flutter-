import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clon_app/profile/profileScreen.dart';
import 'package:whatsapp_ui_clon_app/widgets/UIhelper.dart';

class OtpScreen extends StatelessWidget {
  String
      phonenumber; // bundel passing when we send the data one page to another page
  TextEditingController otp1controller = TextEditingController();
  TextEditingController otp2controller = TextEditingController();
  TextEditingController otp3controller = TextEditingController();
  TextEditingController otp4controller = TextEditingController();
  TextEditingController otp5controller = TextEditingController();
  TextEditingController otp6controller = TextEditingController();
  OtpScreen({required this.phonenumber});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 80),
          Center(
            child: UiHelper.CustomText(
              text: "Verifying your number",
              height: 24,
              fontweight: FontWeight.w700,
              color: Color(0XFF00A884),
            ),
          ),
          SizedBox(height: 30),
          UiHelper.CustomText(
            text: "You’ve tried to register +911234567890",
            height: 16,
          ),
          SizedBox(height: 3),
          UiHelper.CustomText(
            text: "recently. Wait before requesting an sms or a call.",
            height: 16,
          ),
          SizedBox(height: 3),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              UiHelper.CustomText(
                text: "with your code.",
                height: 16,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context); // for move the previous page
                },
                child: UiHelper.CustomText(
                  text: "Wrong number?",
                  height: 16,
                  fontweight: FontWeight.w700,
                  color: Color(0XFF00A884),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                UiHelper.CustumContainer(otp1controller),
                UiHelper.CustumContainer(otp2controller),
                UiHelper.CustumContainer(otp3controller),
                UiHelper.CustumContainer(otp4controller),
                UiHelper.CustumContainer(otp5controller),
                UiHelper.CustumContainer(otp6controller),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          UiHelper.CustomText(
            text: "Didn’t receive code?",
            height: 16,
            fontweight: FontWeight.w700,
            color: Color(0XFF00A884),
          )
        ],
      ),
      floatingActionButton: UiHelper.CustomButton(
          callback: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Profilescreen(),
                ));
          },
          Buttonname: "Next",
          color: Color(0XFF00A884)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
