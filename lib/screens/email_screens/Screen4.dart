import 'package:flutter/material.dart';
import '../../widgets/email_body/email_body.dart';
import '../../widgets/email_header/shipping_information.dart';
import '../../widgets/email_header/email_title.dart';
import '../../widgets/email_header/sender_card.dart';


class Screen4 extends StatelessWidget {


  const Screen4 ({Key? key}): super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding( 
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            children: [
              EmailTitle(label: "Tudo no Roxinho: quer saber se você ganhou?"),
              SenderCard(label: "Nubank"),
              ShippingInformation(sender: "Nubank", emailSender: "noreply@Amz-ID-boFmQ2R3J8PPJ.com", emailRecipient: "logancardoso4@gamil.com"),
              Image.asset('images/nubank.jpg'),
                Container(
                height: 460,
                color: Colors.black,
                child: Center(child: EmailBody(contents: "Nós detectamos uma atividade suspeita na sua conta e multiplas tentativas de acesso. \n\n Nós precisamos que você	confirme sua conta! \n\n1-Click aqui para confirmar sua conta"),
               ),
              ),   
            ],
          ),
    );
  }
}