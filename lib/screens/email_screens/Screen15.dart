import 'package:flutter/material.dart';
import 'package:mensage_screen/home/home_page.dart';
import '../../widgets/email_body/email_body.dart';
import '../../widgets/email_header/shipping_information.dart';
import '../../widgets/email_header/email_title.dart';
import '../../widgets/email_header/sender_card.dart';

class Screen15 extends StatelessWidget {
  const Screen15({Key? key}) : super(key: key);

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
                EmailTitle(label: "Últimas horas do Saldão do Cliente!"),
                SenderCard(label: "Amazon"),
                ShippingInformation(
                    sender: "Amazon",
                    emailSender: "store-news@amazon.com.br",
                    emailRecipient: "logancardoso4@gamil.com"),
                Image.asset('images/amazon.jpg'),
                Container(
                  height: 460,
                  color: Colors.black,
                  child: Center(
                    child: EmailBody(
                        contents:
                            "Acesse o link e confira as ofertas: \nhttps://www.amazon.com.br/events/saldaodocliente/"),
                  ),
                ),
                Center(
                  child: ElevatedButton(
                    child: const Text("Next"),
                    onPressed: () {
                      print("you clicked the next button");

                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return HomePage();
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
