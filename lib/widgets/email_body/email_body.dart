import 'package:flutter/material.dart';

class EmailBody extends StatelessWidget {
  final String contents;

  const EmailBody({Key? key, required this.contents})
      : super(key: key);

  void setContents(String contents) {
    contents = contents;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 8),
        child: Container(
          height: 450,
          width: 360,
          decoration: const BoxDecoration(
            color: Colors.black,
          ),
          child: Column(children: [
            Padding(
                padding: const EdgeInsets.only(top: 6),
                child: Column(
                  children: [
                 
                     Text(
                        contents,
                        style: TextStyle(fontSize: 16, color: Colors.white)),
                  ],
                ))
          ]),
        ));
  }
}

/*
   Image.asset(
                      "images/logo_bradesco.png",
                      scale: 6,
                    ),
*/