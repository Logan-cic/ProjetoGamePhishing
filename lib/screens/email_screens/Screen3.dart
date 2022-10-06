import 'package:flutter/material.dart';
import '../../widgets/email_body/email_body.dart';
import '../../widgets/email_header/shipping_information.dart';
import '../../widgets/email_header/email_title.dart';
import '../../widgets/email_header/sender_card.dart';


class Screen3 extends StatelessWidget {

  const Screen3({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding( 
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            children: [
              EmailTitle(label: "Você acaba de receber o inforemail Santander - Instabilidade no sistema"),
              SenderCard(label: "Banco Santander"),
              ShippingInformation(sender: "Banco Santander", emailSender: "info@asantander.com", emailRecipient: "cadymaureria@amail.com"),
              Image.asset('images/transferir.png'),
                Container(
                height: 460,
                color: Colors.black,
                child: Center(child: 
                    EmailBody(contents: "Pode ser que você tenha notado que na semana passada nosso site www.groupsantander.com estava funcionando instável.\nDevido a este problema, recentemente atualizamos nosso banco de dados, melhorando nossos sistemas de segurança,\nNo entanto, para concluir esta atualização e otimizar a capacidade de funcionamento de suas contas bancárias, você deve insira os detalhes da sua conta para sincronizar com nossa nova base de clientes e verifique nosso novo sistema de proteção de dados.\n\n Use este link www.santander.com para verificar seus dados."),
               ),
              ),
            ],
       ),
    );
  }
}
