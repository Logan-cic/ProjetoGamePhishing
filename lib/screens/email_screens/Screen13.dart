import 'package:flutter/material.dart';
import 'package:mensage_screen/screens/email_screens/Screen14.dart';
import '../../widgets/email_body/email_body.dart';
import '../../widgets/email_header/shipping_information.dart';
import '../../widgets/email_header/email_title.dart';
import '../../widgets/email_header/sender_card.dart';

class Screen13 extends StatelessWidget {
  const Screen13({Key? key}) : super(key: key);

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
                EmailTitle(label: "Última chance para economizar no Disney+"),
                SenderCard(label: "Disney+"),
                ShippingInformation(
                    sender: "Disney+",
                    emailSender: "disneymais@mail.disneymais.com",
                    emailRecipient: "logancardoso4@gamil.com"),
                Image.asset('images/disney.jpg'),
                Container(
                  height: 460,
                  color: Colors.black,
                  child: Center(
                    child: EmailBody(
                        contents:
                            "Você só tem mais três dias para aproveitar seu primeiro mês de Disney+ por apenas R\$ 4,90. Assine até ‌19 de setembro para garantir essa oferta especial e assistir a grandes lançamentos como Thor: Amor e Trovão da Marvel Studios e Pinóquio da Disney.\nSujeito aos termos.*\n\nAproveite a oferta:\nhttps://www.disneymais.com/pt-br?cid=dss-Disneyplus-email-HPM2QTI244-20220916"),
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
