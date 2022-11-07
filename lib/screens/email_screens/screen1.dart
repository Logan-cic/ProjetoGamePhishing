import 'package:flutter/material.dart';
import '../../widgets/email_body/email_body.dart';
import '../../widgets/email_header/shipping_information.dart';
import '../../widgets/email_header/email_title.dart';
import '../../widgets/email_header/sender_card.dart';

class Screen1 extends StatelessWidget {
  late TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 460,
      child: MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
              backgroundColor: Colors.black,
              elevation: 0,
              title: Text(
                "Game Phishing",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            body: SingleChildScrollView(
                child: Column(
              children: [
                EmailTitle(label: "Cashback todo dia na 99Pay!"),
                SenderCard(label: "voude99"),
                ShippingInformation(
                    sender: "voude99",
                    emailSender: "<voude99@99app.com>",
                    emailRecipient: "logancardoso4@gamil.com"),
                SizedBox(height: 14),
                Image.asset('images/99.jpg'),
                Container(
                  height: 110,
                  color: Colors.black,
                  child: Center(
                    child: EmailBody(
                        contents:
                            "Vem gastar menos e ganhar mais! \n Acesse o link: https://99app.com/99pay/dia-de-cashback/"),
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: Row(
                    children: [
                      SizedBox(
                        height: 100,
                      ),
                      SizedBox(
                        width: 120,
                      ),
                      ElevatedButton(onPressed: () {}, child: Text("Sim")),
                      SizedBox(
                        width: 30,
                      ),
                      ElevatedButton(onPressed: () {}, child: Text("Não")),
                    ],
                  ),
                ),
                Container(
                  height: 200,
                  color: Colors.white,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                          child: const Text("Open Dialog"), onPressed: () {}),
                    ],
                  ),
                )
              ],
            ))),
      ),
    );

    
  }
}
