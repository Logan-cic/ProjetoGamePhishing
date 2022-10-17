import 'package:flutter/material.dart';
import '../screens/email_screens/screen1.dart';

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
                  Center(
                    child: ElevatedButton(
                      child: const Text("Next"),
                      onPressed: () {
                        print("you clicked the next button");

                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Screen1();
                        }));
                      },
                    ),
                  )
                ],
              )),
        ));
  }
}
