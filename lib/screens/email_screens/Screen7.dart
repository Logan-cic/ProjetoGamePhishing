import 'package:flutter/material.dart';
import '../../widgets/email_body/email_body.dart';
import '../../widgets/email_header/shipping_information.dart';
import '../../widgets/email_header/email_title.dart';
import '../../widgets/email_header/sender_card.dart';

class Screen7 extends StatelessWidget {
  const Screen7({Key? key}) : super(key: key);

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
                EmailTitle(label: "iFood quer ouvir você!"),
                SenderCard(label: "iFood"),
                ShippingInformation(
                    sender: "iFood",
                    emailSender: "<news@news.ifood.com.br>",
                    emailRecipient: "logancardoso4@gamil.com"),
                Image.asset('images/ifood.jpg'),
                Container(
                  height: 460,
                  color: Colors.black,
                  child: Center(
                    child: EmailBody(
                        contents:
                            "Faz tempo que a gente não se fala. Queria te ouvir e melhorar a experiência que você teve. Topa me ajudar? É só responder essa pesquisa rapidinho. O link para a pesquisa: https://pesquisaifood.com/jfe/form/SV_2fNiVw3jkVGl4Q6"),
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
