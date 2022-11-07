import 'package:flutter/material.dart';
import '../../../widgets/wapp_body/wappSender.dart';
import '../../../widgets/wapp_header/wappHeader.dart';
import '../../widgets/wapp_body/wappBody.dart';

class WappScreen1 extends StatelessWidget {
  const WappScreen1({Key? key}) : super(key: key);

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
            child: Column(children: [
              WappHeader(
                contato: "+55 91 98402-9975",
                imageWapp: 'images/icone_zap.jpg',
              ),
              WappBackGround(),
              WappSender(),
            ]),
          ),
        ),
      ),
    );
  }
}
