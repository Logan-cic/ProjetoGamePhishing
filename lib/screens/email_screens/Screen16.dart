import 'package:flutter/material.dart';

import '../../widgets/email_header/email_title.dart';
import '../../widgets/email_header/sender_card.dart';
import '../../widgets/email_header/shipping_information.dart';

class Screen16 extends StatelessWidget {
  const Screen16({Key? key}) : super(key: key);

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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                EmailTitle(label: "Últimas horas do Saldão do Cliente!"),
                SenderCard(label: "Amazon Inc."),
                ShippingInformation(
                    sender: "Amazon Inc.",
                    emailSender: "infosecurity@amazon.com.br",
                    emailRecipient: "logancardoso4@gamil.com"),

                SizedBox(height: 14),

                Container(
                  height: 602,
                  width: 390,
                  color: Colors.black,
                  child: Column(
                    children: [
                      //Image.asset('images/amazon.jpg'),
                      Row(
                        children: [
                          Text(
                            "Dear Customer, ",
                            textAlign: TextAlign.left,
                            //textDirection: TextDirection.ltr,
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Text(
                        "  We detected suspicious activity in your account and multiple password used for access your account.",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      SizedBox(height: 8),
                      Text("We need you to confirm your account!",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 183, 0),
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                      Row(
                        children: [
                          Text("1. Click Here ",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16)),
                          Text(
                            "to confirm your account.",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text("2. Enter your informations. ",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16)),
                        ],
                      ),
                      Row(
                        children: [
                          Text("3. Finally your account will be confirmed. ",
                              style:
                              
                                  TextStyle(color: Colors.white, fontSize: 16)),
                        ],
                      ),
                      SizedBox(height: 6),
                      Row(
                        children: [
                          Text("Note",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold)),
                          Text(
                            ": If you dont't confirm it withing 48 hours, we will",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "close or suspend your account.",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text("Sincerely,",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16)),
                        ],
                      ),
                      Row(
                        children: [
                          Text("Amazon.",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                    ],
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
