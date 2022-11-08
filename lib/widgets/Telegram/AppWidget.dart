import 'package:flutter/material.dart';
import 'package:telegram_phish/Layout_Telegram/Layout.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LayoutTelegram(
        url_icon: 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/Telegram_logo.svg/2048px-Telegram_logo.svg.png',
        Contato: 'Luiz')
      );
  }
}
