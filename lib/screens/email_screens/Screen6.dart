import 'package:flutter/material.dart';
import 'package:mensage_screen/screens/email_screens/Screen7.dart';
import '../../widgets/email_body/email_body.dart';
import '../../widgets/email_header/shipping_information.dart';
import '../../widgets/email_header/email_title.dart';
import '../../widgets/email_header/sender_card.dart';

class Screen6 extends StatelessWidget {
  const Screen6({Key? key}) : super(key: key);

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
                  EmailTitle(label: "Colocamos um troco na sua mão!"),
                  SenderCard(label: "Inter"),
                  ShippingInformation(
                      sender: "Inter",
                      emailSender: "noreply@comunicacao.bancointer.com.br",
                      emailRecipient: "logancardoso4@gamil.com"),
                  Image.asset('images/inter.jpg'),
                  Container(
                    height: 460,
                    color: Colors.black,
                    child: Center(
                      child: EmailBody(
                          contents:
                              "Com o Inter, você tem LIBERDADE DE ESCOLHA. Ao fazer a Portabilidade de Consignado, você decide se quer ter troco na mão, para realizar mais sonhos, ou se quer reduzir as suas parcelas, para economizar mês a mês.\n\nAlém dos nossos benefícios tradicionais, ao portar seu Consignado acima de R\$ 100 mil para o Inter, você ganha um Cartão Inter Black, para fazer compras no crédito e ter toda a exclusividade que merece. \n\nAcesse o link e saiba mais: https://www.bancointer.com.br/pra-voce/"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
