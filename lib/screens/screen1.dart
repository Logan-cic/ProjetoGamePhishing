import 'package:flutter/material.dart';
import '../widgets/body_email/email_body.dart';
import '../widgets/header_email/shipping_information.dart';
import '../widgets/header_email/email_title.dart';
import '../widgets/header_email/sender_card.dart';


class Screen1 extends StatelessWidget {

  const Screen1({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding( 
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            children: [
              EmailTitle(label: "Você acaba de receber o inforemail Bradesco - Chave de Segurança"),
              SenderCard(label: "Banco Bradesco"),
              ShippingInformation(sender: "Banco Bradesco", emailSender: "inforemail@bradesco.com.br", emailRecipient: "logancardoso4@gamil.com"),           
              EmailBody(contents: "Pessoal, bom dia\n. Em função das incertezas com relação à circulação dos ônibus, hoje (08/09) não haverá aula.\nAproveitem para estudar e fazer a lista de exercícios.\nNos vemos novamente na próxima terça-feira.\nUm bom final de semana para vocês.\n-- Nelson.")
            ],
          ),
    );
  }
}
