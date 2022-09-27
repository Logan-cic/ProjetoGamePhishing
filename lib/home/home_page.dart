import 'package:flutter/material.dart';
import 'package:mensage_screen/screens/screen1.dart';
import '../widgets/body_email/email_body.dart';
import '../widgets/header_email/shipping_information.dart';
import '../widgets/header_email/email_title.dart';
import '../widgets/header_email/sender_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: Colors.black,
      appBar: AppBar( 
        backgroundColor: Colors.black,
        elevation: 0,
        title: Text("Game Phishing",
          style: TextStyle(
            fontSize: 24, 
            fontWeight: FontWeight.bold),
            ),
        actions: [
          //botões de interção
        ],
      ),
      drawer: Drawer(), // possivel menu
      body: SingleChildScrollView(
        child: Padding( 
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            children: [
              Screen1()
            ],
          ),
        ),
      )
    );
  }
}

