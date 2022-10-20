import 'package:flutter/material.dart';
import 'package:mensage_screen/screens/email_screens/screen1.dart';

import '../screens/email_screens/Screen10.dart';
import '../screens/email_screens/Screen12.dart';
import '../screens/email_screens/Screen13.dart';
import '../screens/email_screens/Screen14.dart';
import '../screens/email_screens/Screen15.dart';
import '../screens/email_screens/Screen16.dart';
import '../screens/email_screens/Screen2.dart';
import '../screens/email_screens/Screen3.dart';
import '../screens/email_screens/Screen4.dart';
import '../screens/email_screens/Screen5.dart';
import '../screens/email_screens/Screen6.dart';
import '../screens/email_screens/Screen7.dart';
import '../screens/email_screens/Screen8.dart';
import '../screens/email_screens/Screen9.dart';
import '../screens/email_screens/screen11.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<HomePage> {
  final controller = PageController(initialPage: 1);
  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var screen13 = Screen13;
    return SizedBox(
        height: 460,
        child: MaterialApp(
          home: Scaffold(
            appBar: AppBar(title: const Text("page view"), actions: [
              IconButton(
                icon: const Icon(Icons.keyboard_arrow_left),
                onPressed: () => controller.animateToPage(0,
                    duration: const Duration(seconds: 1),
                    curve: Curves.easeInOut),
              ),
              IconButton(
                icon: const Icon(Icons.keyboard_arrow_right),
                onPressed: () => controller.animateToPage(1,
                    duration: const Duration(seconds: 1),
                    curve: Curves.easeInOut),
              ),
            ]),
            body: PageView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  height: 460,
                  child: Screen1(),
                ),
                Container(
                  height: 460,
                  child: Screen2(),
                ),
                Container(
                  height: 460,
                  child: Screen3(),
                ),
                Container(
                  height: 460,
                  child: Screen4(),
                ),
                Container(
                  height: 460,
                  child: Screen5(),
                ),
                Container(
                  height: 460,
                  child: Screen6(),
                ),
                Container(
                  height: 460,
                  child: Screen7(),
                ),
                Container(
                  height: 460,
                  child: Screen8(),
                ),
                Container(
                  height: 460,
                  child: Screen9(),
                ),
                Container(
                  height: 460,
                  child: Screen10(),
                ),Container(
                  height: 460,
                  child: Screen11(),
                ),
                Container(
                  height: 460,
                  child: Screen12(),
                ),
                Container(
                  height: 460,
                  child: Screen13(),
                ),
                Container(
                  height: 460,
                  child: Screen14(),
                ),
                Container(
                  height: 460,
                  child: Screen15(),
                ),
                Container(
                  height: 460,
                  child: Screen16(),
                ),
              ],
            ),
          ),
        ),
      );
  }
}





























/*
import 'package:flutter/material.dart';
import '../screens/email_screens/Screen16.dart';
import '../screens/email_screens/Screen2.dart';
import '../screens/email_screens/Screen3.dart';
import '../screens/email_screens/screen1.dart';
import 'home_page_state.dart';

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
        body: MyStatelessWidget(),
        );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(
      initialPage: 1,
    );
    return PageView(
   
      controller: controller,
      scrollDirection: Axis.vertical,
      children: const <Widget>[
        Screen1(),
        Screen2(),
        Screen3(),
      ],
    );
  }
}

*/



































/*
SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                children: [
                  Center(
                    child: ElevatedButton(
                      child: const Text("Next"),
                      onPressed: () {
                        print("you clicked the next button");

                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return MyStatelessWidget();
                        }));
                      },
                    ),
                  )
                ],
              )),
        )
*/