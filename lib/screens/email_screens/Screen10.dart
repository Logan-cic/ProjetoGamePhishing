import 'package:flutter/material.dart';
import '../../widgets/email_body/email_body.dart';
import '../../widgets/email_header/shipping_information.dart';
import '../../widgets/email_header/email_title.dart';
import '../../widgets/email_header/sender_card.dart';

class Screen10 extends StatelessWidget {
  const Screen10({Key? key}) : super(key: key);

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
                    label: "Informações importantes sobre a sua conta PayPal"),
                SenderCard(label: "Bradesco"),
                ShippingInformation(
                    sender: "Bradesco",
                    emailSender: "service@paypal.com.br",
                    emailRecipient: "logancardoso4@gamil.com"),
                Image.asset('images/paypal.jpg'),
                Container(
                  height: 460,
                  color: Colors.black,
                  child: Center(
                    child: EmailBody(
                        contents:
                            "Olá cliente,\n\n obrigado por usar Bradesco. Sinto informar que sua conta corrente/poupança será suspensa por não cumprir com nossos termos e condições\n\nOs motivos são: dados cadastrais desatualizados, cartão chave de segurança expirada.\n\nPara evitar essa suspenção será necessário atualizar seus dados Acesse o link para atualizar seus dados: \n\nwww.scam.org.com/FMfcgzGqQmWjKmdhgcFRXtMlKlnPlJWQ"),
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
