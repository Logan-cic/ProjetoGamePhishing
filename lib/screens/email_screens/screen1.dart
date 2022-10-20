import 'package:flutter/material.dart';
import 'package:mensage_screen/screens/email_screens/Screen2.dart';
import '../../widgets/email_body/email_body.dart';
import '../../widgets/email_header/shipping_information.dart';
import '../../widgets/email_header/email_title.dart';
import '../../widgets/email_header/sender_card.dart';
import 'Screen2.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

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
                  height: 460,
                  color: Colors.black,
                  child: Center(
                    child: EmailBody(
                        contents:
                            "Vem gastar menos e ganhar mais! \n Acesse o link: https://99app.com/99pay/dia-de-cashback/"),
                  ),
                ),
               
              ],
            ))),
      ),
    );
  }
}

/*
 Center(
                  child: ElevatedButton(
                    child: const Text("Next"),
                    onPressed: () {
                      print("you clicked the next button");

                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Screen2();
                      }));
                    },
                  ),
                ),
                Center(
                  child: ElevatedButton(
                    child: const Text("Back"),
                    onPressed: () {
                      print("you clicked the Back button");

                      Navigator.pop(context);
                    },
                  ),
                ),
*/
