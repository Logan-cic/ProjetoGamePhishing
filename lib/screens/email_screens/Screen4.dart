import 'package:flutter/material.dart';
import '../../widgets/email_body/email_body.dart';
import '../../widgets/email_header/shipping_information.dart';
import '../../widgets/email_header/email_title.dart';
import '../../widgets/email_header/sender_card.dart';


/// Screen4 is a StatelessWidget that contains a Padding widget that contains a Column widget that
/// contains a EmailTitle widget, a SenderCard widget, a ShippingInformation widget, and a Container
/// widget that contains a Center widget that contains an EmailBody widget
class Screen4 extends StatelessWidget {


  const Screen4 ({Key? key}): super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding( 
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            children: [
              EmailTitle(label: "Aviso de suspenção de conta Amazon"),
              SenderCard(label: "Amazon Inc."),
              ShippingInformation(sender: "Amazon Inc.", emailSender: "noreply@Amz-boF2R3.com ", emailRecipient: "logancardoso4@gamil.com"),
              //Image.asset('images/nubank.jpg'),
                Container(
                height: 460,
                color: Colors.black,
                child: Center(child: EmailBody(contents: "Nós detectamos uma atividade suspeita na sua conta e multiplas tentativas de acesso. \n\n Nós precisamos que você	confirme sua conta! \n\n1-Click aqui para confirmar sua conta\n2-Insira suas informações\n3-Finalmente sua conta será confirmada.\n\nNota: se você não confirmar dentro de 48 horas, fecharemos ou suspenderemos sua conta."),
               ),
              ),   
            ],
          ),
    );
  }
}