import 'package:flutter/material.dart';
import 'package:mensage_screen/screens/email_screens/Screen15.dart';
import '../../widgets/email_body/email_body.dart';
import '../../widgets/email_header/shipping_information.dart';
import '../../widgets/email_header/email_title.dart';
import '../../widgets/email_header/sender_card.dart';

class Screen14 extends StatelessWidget {
  const Screen14({Key? key}) : super(key: key);

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
                EmailTitle(label: "Um novo aparelho está usando sua conta "),
                SenderCard(label: "Netflix"),
                ShippingInformation(
                    sender: "Netflix",
                    emailSender: "noreply@suportes.acessorias.com.br",
                    emailRecipient: "logancardoso4@gamil.com"),
                Image.asset('images/netflix.jpg'),
                Container(
                  height: 460,
                  color: Colors.black,
                  child: Center(
                    child: EmailBody(
                        contents:
                            "Se foi você ou outra pessoa que mora na sua residência: \nDivirta-se!\n\nSe foi outra pessoa: \nLembre-se de que somente as pessoas que moram na sua residência podem usar sua conta.\n\nSe foi outra pessoa: \nRecomendamos alterar imediatamente sua senha para manter a segurança da conta. \nAcesse o link: http://help.netflixoficial.com/pt/  "),
                  ),
                ),
                Center(
                  child: ElevatedButton(
                    child: const Text("Next"),
                    onPressed: () {
                      print("you clicked the next button");

                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Screen15();
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
