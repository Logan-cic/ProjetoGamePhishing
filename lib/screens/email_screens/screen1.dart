import 'package:flutter/material.dart';
import '../../widgets/email_body/email_body.dart';
import '../../widgets/email_header/icones.dart';
import '../../widgets/email_header/shipping_information.dart';
import '../../widgets/email_header/email_title.dart';
import '../../widgets/email_header/sender_card.dart';


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
              Image.asset('images/logo_bradesco.png', scale: 3,),
                Container(
                height: 460,
                color: Colors.black,
                child: Center(child: EmailBody(contents: ""),
               ),
              ),           
            ],
          ),
    );
  }
}
