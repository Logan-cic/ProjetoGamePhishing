import 'package:flutter/material.dart';
import '../../widgets/email_body/email_body.dart';
import '../../widgets/email_header/shipping_information.dart';
import '../../widgets/email_header/email_title.dart';
import '../../widgets/email_header/sender_card.dart';


class Screen2 extends StatelessWidget {


  const Screen2 ({Key? key}): super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding( 
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            children: [
              EmailTitle(label: "Tudo no Roxinho: quer saber se você ganhou?"),
              SenderCard(label: "Nubank"),
              ShippingInformation(sender: "Nubank", emailSender: "inforemail@nubank.com.br", emailRecipient: "logancardoso4@gamil.com"),
              Image.asset('images/nubank.jpg'),
                Container(
                height: 460,
                color: Colors.black,
                child: Center(child: EmailBody(contents: "Parabéns, \n\nVocê foi um dos ganhadores na premiação do concurso Tudo no Roxinho. O Nubank nasceu com a missão de descomplicar o dia a dia das pessoas, principalmente quando se trata de vida financeira. Oferecemos produtos e serviços simples de usar e que podem ser acompanhados totalmente pelo aplicativo. \n\n\nE com a promoção “Tudo no Roxinho” não é diferente. Lançada hoje, 16 de maio de 2022, ela vai durar três meses, com quatro sorteios de R\$ 10 mil por mês, durante o período da promoção e um grande prêmio de R\$ 300 mil ao final da promoção, que se encerra em setembro deste ano. \n\nEntre no nosso site e resgate sua premiação: \nhttps://nunbank.com.br/premio"),
               ),
              ),   
            ],
          ),
    );
  }
}
