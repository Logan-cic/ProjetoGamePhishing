import 'package:flutter/material.dart';
import '../../widgets/email_body/email_body.dart';
import '../../widgets/email_header/shipping_information.dart';
import '../../widgets/email_header/email_title.dart';
import '../../widgets/email_header/sender_card.dart';

class Screen5 extends StatelessWidget {


  const Screen5 ({Key? key}): super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding( 
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            children: [
              EmailTitle(label: "Aviso de suspenção de conta Amazon"),
              SenderCard(label: "Banco do Brasil"),
              ShippingInformation(sender: "Banco do Brasil", emailSender: "noreply@Amz-boF2R3.com ", emailRecipient: "logancardoso4@gamil.com"),
              //Image.asset('images/nubank.jpg'),
                Container(
                height: 460,
                color: Colors.black,
                child: Center(child: EmailBody(contents: "Esta atualização vem para correção de alguns modulos adicionais de acesso e se faz obngztúna para todos os dientes pessoa física. Para realiza-la siga as instruções disponíveis no link abaixo:"),
               ),
              ),
              Container(
                height: 40,
                width: double.infinity,
                color: Colors.grey[900],
                child: TextButton(onPressed: () {  },
                  child: Text('[http:/hwww.bb.com.br/autoatendimento/internet/atualizar]',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.blue[700],), 
                    ),
                 ),alignment: Alignment.topLeft,
              ),
                 Container(
                height: 200,
                color: Colors.grey[900],
                child: Center(child: Text("\n\nCaso suas informações não forem confirmadas suas conta será suspensa.",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
    );
  }
}