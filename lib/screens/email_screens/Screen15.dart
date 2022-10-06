import 'package:flutter/material.dart';
import '../../widgets/email_body/email_body.dart';
import '../../widgets/email_header/shipping_information.dart';
import '../../widgets/email_header/email_title.dart';
import '../../widgets/email_header/sender_card.dart';


class Screen15 extends StatelessWidget {


  const Screen15 ({Key? key}): super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding( 
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            children: [
              EmailTitle(label: "Últimas horas do Saldão do Cliente!"),
              SenderCard(label: "Amazon"),
              ShippingInformation(sender: "Amazon", emailSender: "store-news@amazon.com.br", emailRecipient: "logancardoso4@gamil.com"),
              Image.asset('images/amazon.jpg'),
                Container(
                height: 460,
                color: Colors.black,
                child: Center(child: EmailBody(contents: "Acesse o link e confira as ofertas: \nhttps://www.amazon.com.br/events/saldaodocliente/"),
                ),
              ),   
            ],
          ),
    );
  }
}