import 'package:flutter/material.dart';
//import 'package:mensage_screen/widgets/sms_header/smsSender.dart';
import '../../widgets/sms_body/smsBody.dart';
import '../../widgets/sms_header/smsHeader.dart';


class SmsScreen1 extends StatelessWidget {


  const SmsScreen1({Key? key}): super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container( 
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Stack(
            children: [
              SmsHeader(contato: 'Claro',),
              chatSms(),
              SmsBackGround(),
              //SmsSender(),
            ],
          ),
    );
  }
}  

class ChatMessege{
  String messageContent;
  String messageType;
  ChatMessege({required this.messageContent, required this.messageType});
}
  Widget chatSms() {
    return Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            ListView.builder(
              itemCount: messages.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 70,bottom: 50),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index){
                return Container(
                  padding: EdgeInsets.only(left: 5,right: 5,top: 2,bottom: 10),
                  child: Align(
                    alignment: (messages[index].messageType == "receiver"?Alignment.topLeft:Alignment.topRight),
                    child: Container(
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: (messages[index].messageType  == "receiver"?Colors.grey.shade200:Colors.blue[900]),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                    child: Text(messages[index].messageContent, style: TextStyle(fontSize: 15),),
                    ),
                  ),  
                );
              },
            ),
          ],  
        );
  }

List<ChatMessege> messages = [
    ChatMessege(messageContent: "terminou a tela de zap?", messageType: "receiver"),
    ChatMessege(messageContent: "é pra amanhã", messageType: "receiver"),
    ChatMessege(messageContent: "AINDA N", messageType: "sender"),
    ChatMessege(messageContent: "fodeu.", messageType: "receiver"),
    ChatMessege(messageContent: "VO ME M*", messageType: "sender"),
  ];
