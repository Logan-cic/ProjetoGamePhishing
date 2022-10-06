import 'package:flutter/material.dart';
import 'package:mensage_screen/screens/email_screens/Screen3.dart';
import 'package:mensage_screen/screens/email_screens/screen1.dart';
import 'package:flutter/src/rendering/box.dart';

import '../screens/email_screens/Screen2.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          title: Text(
            "Game Phishing",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          actions: [
            //botões de interção
          ],
        ),
        drawer: Drawer(), // possivel menu
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              children: [
                //Screen1(),
                //Screen2(),
                Screen3(),
              ],
            ),
          ),
        ));
  }
}
