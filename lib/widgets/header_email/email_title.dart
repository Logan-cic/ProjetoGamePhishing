import 'package:flutter/material.dart';

class EmailTitle extends StatelessWidget {

  final String label;

  const EmailTitle({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 2),
        child: Container(
          height: 120,
          width: 350,
          decoration: BoxDecoration(
            color: Colors.black,
          ),
          child: TextField(
            decoration: InputDecoration(
                label: Text(label, 
                style: TextStyle(
                fontSize: 26,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ),
      ),
    );
  }
}


 