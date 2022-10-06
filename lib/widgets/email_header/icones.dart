import 'package:flutter/material.dart';

class Icones extends StatelessWidget {
  const Icones({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 350,
      decoration: 
        BoxDecoration(
          color: Colors.black,
      ),
      child: Row(children: [
          IconButton(icon: Icon(Icons.arrow_back_outlined),onPressed: () {}),
          IconButton(icon: Icon(Icons.archive), onPressed: () {}),
          IconButton(icon: Icon(Icons.delete), onPressed: () {}),
          IconButton(icon: Icon(Icons.email), onPressed: () {}),
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
        ]
      ,)
    );
  }
}
