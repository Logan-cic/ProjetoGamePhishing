import 'package:flutter/material.dart';
import 'package:telegram_phish/Layout_Telegram/background.dart';
import 'package:telegram_phish/Chat/chat.dart';
import 'package:telegram_phish/Layout_Telegram/sender.dart';

class LayoutTelegram extends StatelessWidget {
  final String url_icon;
  final String Contato;
  const LayoutTelegram({required this.url_icon, required this.Contato});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // Appbar
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 39, 51, 62),
          title: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 5.0),
                child: CircleAvatar(
                    radius: 20, backgroundImage: NetworkImage(url_icon)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Contato,
                      style: const TextStyle(
                          fontSize: 17, fontWeight: FontWeight.w600),
                    ),
                    Text('online',
                        style: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 136, 140, 144)))
                  ],
                ),
              ),
            ],
          ),
          leading: Icon(Icons.arrow_back),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 25.0),
              child: Icon(Icons.phone),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: Icon(Icons.more_vert),
            )
          ],
        ),

        // Corpo
        body: Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [MensagensTel(), Sender()]));
  }
}
