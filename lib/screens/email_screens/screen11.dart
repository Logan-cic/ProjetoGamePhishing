import 'package:flutter/material.dart';
import '../../widgets/email_body/email_body.dart';
import '../../widgets/email_header/shipping_information.dart';
import '../../widgets/email_header/email_title.dart';
import '../../widgets/email_header/sender_card.dart';

class Screen11 extends StatelessWidget {
  const Screen11({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 460,
      child: MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            elevation: 0,
            title: Text(
              "Game Phishing",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                EmailTitle(
                    label: "Informações importantes sobre a sua conta PayPal"),
                SenderCard(label: "Nigerian Phishing"),
                ShippingInformation(
                    sender: "Nigerian Phishing",
                    emailSender: "service@nigerian.com.br",
                    emailRecipient: "logancardoso4@gamil.com"),
                //Image.asset('images/paypal.jpg'),
                Container(
                  height: 460,
                  color: Colors.black,
                  child: Center(
                    child: EmailBody(
                        contents:
                            "Importante,\n\n The information transmitted is for the use of the intended recipient only and may contain confidential and/or legally privileged material. Any review, re-transmission, disclosure,dissemination or other use of, or taking of anyaaction in reliance upon, this information by persons or entíties other than the intended recipient is prohibited and may result in severe penalties. If you have received this e-mail in errorplease notify the Privacy Hotline of the Australian Taxation Office, telephone 1300 661 542 and delete al copies of this transmission together with any attachments. Acesse o link para atualizar seus dados: \n\nwww.scam.org.com/FMfcgzGqQmWjKmdhgcFRXtMlKlnPlJWQ"),
                  ),
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
