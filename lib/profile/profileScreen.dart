import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:whatsapp_ui_clon_app/Home/HomeScreen.dart';
import 'package:whatsapp_ui_clon_app/widgets/UIhelper.dart';

class Profilescreen extends StatefulWidget {
  const Profilescreen({super.key});

  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {
  File? pickedimage;
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            UiHelper.CustomText(
              text: "Profile info",
              height: 24,
              fontweight: FontWeight.w700,
              color: Color(0XFF00A884),
            ),
            SizedBox(
              height: 30,
            ),
            UiHelper.CustomText(
              text: "Please provide your name and an optional",
              height: 16,
              fontweight: FontWeight.w700,
            ),
            SizedBox(height: 3),
            UiHelper.CustomText(
              text: "profile photo",
              height: 16,
              fontweight: FontWeight.w700,
            ),
            SizedBox(height: 50),
            GestureDetector(
              onTap: () {
                _openBottom(context);
              },
              child: pickedimage == null // if else condition
                  ? CircleAvatar(
                      radius: 80,
                      backgroundColor: Colors.grey,
                      child: Image.asset(
                        'assets/images/photo-camera 1.png',
                        height: 50,
                        fit: BoxFit.contain,
                      ),
                    )
                  : CircleAvatar(
                      radius: 80,
                      backgroundImage: FileImage(pickedimage!),
                    ),
            ),
            SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 280,
                  child: TextField(
                    controller: controller,
                    decoration: InputDecoration(
                        hintText: 'Type your name here',
                        border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0XFF5E5E5E))),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0XFF05AA82))),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0XFF05AA82)))),
                  ),
                ),
                Container(
                  height: 30,
                  width: 30,
                  child: Image.asset('assets/images/happy-face 1.png'),
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButton: UiHelper.CustomButton(
        callback: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomeScreen(),
              ));
        },
        Buttonname: "Next",
        color: Color(0XFF00A884),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  _openBottom(context) {
    // bhuild context use becouse we do bhuild the bottom sheet
    return showModalBottomSheet(
      context: context,
      builder: (context) => Container(
        height: 200,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                _pickedImage(ImageSource.camera);
              },
              icon: Icon(
                Icons.camera_alt,
                size: 80,
                color: Colors.grey,
              ),
            ),
            IconButton(
                onPressed: () {
                  _pickedImage(ImageSource.gallery);
                },
                icon: Icon(
                  Icons.image,
                  size: 80,
                  color: Colors.grey,
                ))
          ],
        ),
      ),
    );
  }

  _pickedImage(ImageSource imagesource) async {
    try {
      final photo = await ImagePicker().pickImage(source: imagesource);
      if (photo == null) return;
      final tempimage = File(photo.path);
      setState(() {
        pickedimage = tempimage;
      });
    } catch (ex) {
      return ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(ex.toString())));
    }
  }
}
