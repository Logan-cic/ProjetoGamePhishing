import 'package:flutter/material.dart';

class WappSender extends StatelessWidget {
  // ignore: prefer_final_fields

  WappSender({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          padding: const EdgeInsets.symmetric( horizontal: 140, vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24.0),
            color: Colors.white70,
          ),
        //child: iconesWapp(),
        ),
        Container(
          padding: const EdgeInsets.all(12.2),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24.0),
            color: const Color.fromRGBO(8, 95, 87, 1.0),
          ),
          child: Icon(Icons.mic, color: Colors.white,),
        ),
      ],
    );
  }  
}  

Widget iconesWapp (){
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
        Icon(Icons.emoji_emotions_outlined, color: Colors.black,),
        Spacer(flex: 6),
        Icon(Icons.attach_file, color: Colors.black),
        Spacer(flex: 1),
        Icon(Icons.paid_sharp, color: Colors.black),
        Spacer(flex: 1),
        Icon(Icons.photo_camera_back_rounded, color: Colors.black),
        Spacer(flex: 1),
         
    ],
  );
}