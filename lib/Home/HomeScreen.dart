import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clon_app/widgets/UIhelper.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: "CHATS",
            ),
            Tab(
              text: "STATUS",
            ),
            Tab(
              text: "CALLS",
            )
          ]),
          toolbarHeight: 100,
          title: UiHelper.CustomText(
              text: "WhatsApp",
              height: 24,
              color: Colors.white,
              fontweight: FontWeight.bold),
          backgroundColor: Color(0XFF00A884),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: IconButton(
                  onPressed: () {},
                  icon: Image.asset('assets/images/Search.png')),
            ),
            // IconButton(
            //     onPressed: () {},
            //     icon: Image.asset('assets/images/camera-solid 2.png'))
          ],
        ),
        body: Center(
          child: Text('hello'),
        ),
      ),
    );
  }
}
