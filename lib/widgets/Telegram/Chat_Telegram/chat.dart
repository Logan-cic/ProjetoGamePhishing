import 'package:flutter/material.dart';
import 'package:telegram_phish/Layout_Telegram/background.dart';

class _chatTel {
  String TextoMensagem;
  String TipoMensagem;
  _chatTel({required this.TextoMensagem, required this.TipoMensagem});
}

class MensagensTel extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(alignment: Alignment.topCenter, children: [
      Background(),
      ListView.builder(
        itemCount: mensagens.length,
        shrinkWrap: true,
        padding: EdgeInsets.only(top: 10),
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: ((context, index) {
          return Container(
            padding: EdgeInsets.only(left: 5, right: 5, top: 2, bottom: 7),
            child: Align(
              alignment: (mensagens[index].TipoMensagem == "receber"
                  ? Alignment.topLeft
                  : Alignment.topRight),
              child: Container(
                constraints: BoxConstraints(maxWidth: 280),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: (mensagens[index].TipoMensagem == "receber"
                      ? Color.fromARGB(255, 39, 51, 62)
                      : Color.fromARGB(255, 65, 124, 179)),
                ),
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                child: Text(
                  mensagens[index].TextoMensagem,
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ),
            ),
          );
        }),
      )
    ]));
  }
}

List<_chatTel> mensagens = [
  _chatTel(TextoMensagem: "VO ME M*", TipoMensagem: "receber"),
  _chatTel(TextoMensagem: "VO ME M*", TipoMensagem: "receber"),
  _chatTel(TextoMensagem: "VO ME M*", TipoMensagem: "enviar"),
  _chatTel(TextoMensagem: "VO ME M*", TipoMensagem: "receber"),
  _chatTel(TextoMensagem: "VO ME M*", TipoMensagem: "enviar"),
];

