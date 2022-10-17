import 'package:flutter/material.dart';
import 'package:mensage_screen/screens/email_screens/Screen10.dart';
import '../../widgets/email_body/email_body.dart';
import '../../widgets/email_header/shipping_information.dart';
import '../../widgets/email_header/email_title.dart';
import '../../widgets/email_header/sender_card.dart';

class Screen9 extends StatelessWidget {
  const Screen9({Key? key}) : super(key: key);

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
                EmailTitle(
                    label:
                        "Atenção -  Comunicado Importante da caixa economica Federal"),
                SenderCard(label: "Caixa enconomica"),
                ShippingInformation(
                    sender: "Caixa enconomica",
                    emailSender: "service@paypal.com.br",
                    emailRecipient: "logancardoso4@gamil.com"),
                Image.asset('images/paypal.jpg'),
                Container(
                  height: 460,
                  color: Colors.black,
                  child: Center(
                    child: EmailBody(contents: ""),
                  ),
                ),
                Center(
                  child: ElevatedButton(
                    child: const Text("Next"),
                    onPressed: () {
                      print("you clicked the next button");

                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Screen10();
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
