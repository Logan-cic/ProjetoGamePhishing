import 'package:flutter/material.dart';
import '../../widgets/email_body/email_body.dart';
import '../../widgets/email_header/shipping_information.dart';
import '../../widgets/email_header/email_title.dart';
import '../../widgets/email_header/sender_card.dart';


class Screen9 extends StatelessWidget {


  const Screen9 ({Key? key}): super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding( 
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            children: [
              EmailTitle(label: "Atenção -  Comunicado Importante da caixa economica Federal"),
              SenderCard(label: "Caixa enconomica"),
              ShippingInformation(sender: "Caixa enconomica", emailSender: "service@paypal.com.br", emailRecipient: "logancardoso4@gamil.com"),
              Image.asset('images/paypal.jpg'),
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