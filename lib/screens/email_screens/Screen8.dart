import 'package:flutter/material.dart';
import '../../widgets/email_body/email_body.dart';
import '../../widgets/email_header/shipping_information.dart';
import '../../widgets/email_header/email_title.dart';
import '../../widgets/email_header/sender_card.dart';

class Screen8 extends StatelessWidget {
  const Screen8({Key? key}) : super(key: key);

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
                        "Comunicado urgente: atualização do seu dispositivo de segurança  (iToken) "),
                SenderCard(label: "Itaú"),
                ShippingInformation(
                    sender: "Itaú",
                    emailSender: "service@paypal.com.br",
                    emailRecipient: " emersonalecrim@uol.com.br "),
                //Image.asset('images/paypal.jpg'),
                Container(
                  height: 460,
                  color: Colors.black,
                  child: Center(
                    child: EmailBody(
                        contents:
                            "A conta vinculada ao contrato de número 09767137-001973.097 encontra-se desatualizada com nosso sistema. Por isso, estamos disponibilizando a atualização através deste assistente, para que não haja necessidade de você se deslocar até sua agência.\n\nA atualização consiste em sincronizar o seu dispositivo de segurança (iToken) para a nova versão disponível 2.04.\n\nA atualização será realizada em ambiente seguro com o Guardião 30 horas. Esse procedimento é obrigatório para todos os clientes\n\n clique no link abaixo e preencha os campos corretamente.\n\nAcesse o link: www.scam.org.com/FMfcgzGqQmWjKmdhgcFRXtMlKlnPlJWQ"),
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
