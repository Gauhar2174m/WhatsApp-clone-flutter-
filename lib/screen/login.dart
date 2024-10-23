import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clon_app/screen/OTP_screen.dart';
import 'package:whatsapp_ui_clon_app/widgets/UIhelper.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String selectedCountry = "India"; // Default selected country
  TextEditingController phoneController = TextEditingController();
  List<String> countries = [
    "India",
    "America",
    "Africa",
    "Italy",
    "Germany",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 80),
          Center(
            child: UiHelper.CustomText(
              text: "Enter your phone number",
              height: 24,
              fontweight: FontWeight.w700,
              color: Color(0XFF00A884),
            ),
          ),
          SizedBox(height: 30),
          UiHelper.CustomText(
            text: "WhatsApp will need to verify your phone",
            height: 16,
          ),
          SizedBox(height: 3),
          UiHelper.CustomText(
            text: "number. Carrier charges may apply.",
            height: 16,
          ),
          SizedBox(height: 3),
          UiHelper.CustomText(
            text: "What’s my number?",
            height: 16,
            color: Color(0XFF00A884),
          ),
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: DropdownButtonFormField<String>(
              items: countries.map((String country) {
                return DropdownMenuItem<String>(
                  child: Text(country),
                  value: country,
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  if (newValue != null) {
                    selectedCountry = newValue; // Update selected country
                  }
                });
              },
              value: selectedCountry,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      color: Color(
                          0XFF00A884)), // Change border color when focused
                ),
                // Optional hint
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 50,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        hintText: "+91",
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0XFF00A884)),
                        )),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                SizedBox(
                  width: 235,
                  child: TextField(
                    controller: phoneController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0XFF00A884)),
                    )),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: UiHelper.CustomButton(
          callback: () {
            login(phoneController.text.toString());
          },
          Buttonname: "Next",
          color: Color(0XFF00A884)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  login(String phonenumber) {
    if (phonenumber == "") {
      return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Enter Phone number"),
        backgroundColor: Color(0XFF00A884),
      ));
    } else {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => OtpScreen(
              phonenumber: phonenumber,
            ), // phone number send with navigate for bundle passing
          ));
    }
  }
}
