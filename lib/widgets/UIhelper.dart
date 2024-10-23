import 'package:flutter/material.dart';

class UiHelper {
  static CustomButton(
      { // we make the custom button function becouse button use the multiple time in whatsapp clon
      required VoidCallback
          callback // we use the required keyword if we where use this function and also give the callback function
      ,
      required String Buttonname,
      Color? color}) {
    return SizedBox(
      height: 35,
      width: 350,
      child: ElevatedButton(
          onPressed: () {
            callback();
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: color ?? Colors.green, // Default color
            // Adjust padding as needed
          ),
          child: Text(
            Buttonname,
            style: TextStyle(fontSize: 14, color: Colors.white),
          )),
    );
  }

  static CustomText(
      {required String text,
      required double height,
      Color? color,
      FontWeight? fontweight}) {
    // ? means it cann be null ;
    // ?? means if else condition ;
    return Text(
      text,
      style: TextStyle(
          fontSize: height,
          color: color ?? Color(0XFF5E5E5E),
          fontWeight: fontweight),
    );
  }

  static CustumContainer(TextEditingController controller) {
    return Container(
      height: 41,
      width: 41,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.grey),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(border: InputBorder.none),
      ),
    );
  }
}
