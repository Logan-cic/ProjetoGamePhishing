import 'package:flutter/material.dart';
import '../../widgets/email_body/email_body.dart';
import '../../widgets/email_header/shipping_information.dart';
import '../../widgets/email_header/email_title.dart';
import '../../widgets/email_header/sender_card.dart';


class Screen7 extends StatelessWidget {


  const Screen7 ({Key? key}): super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding( 
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            children: [
              EmailTitle(label: "Informações importantes sobre a sua conta PayPal"),
              SenderCard(label: "PayPal"),
              ShippingInformation(sender: "PayPal", emailSender: "service@paypal.com.br", emailRecipient: "logancardoso4@gamil.com"),
              Image.asset('images/paypal.jpg'),
                Container(
                height: 460,
                color: Colors.black,
                child: Center(child: EmailBody(contents: "Informamos que a funcionalidade de saldo da sua carteira PayPal foi descontinuada no dia 02/09/2022. Ou seja, sua conta PayPal deixou de ser uma conta de pagamento (encerrada na data mencionada acima) e passou a ser uma carteira digital, o que significa que qualquer pagamento que você vier a receber será automaticamente transferido para a conta bancária ou de pagamento que você cadastrou em sua carteira PayPal. Você também pode enviar pagamentos utilizando cartões de crédito ou débito cadastrados na sua carteira PayPal.\n\nAcesse o link:www.scam.org.com/FMfcgzGqQmWjKmdhgcFRXtMlKlnPlJWQ"),
               ),
              ),   
            ],
          ),
    );
  }
}