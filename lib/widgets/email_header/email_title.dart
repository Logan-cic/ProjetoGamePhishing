import 'package:flutter/material.dart';

class EmailTitle extends StatelessWidget {

  final String label;

  const EmailTitle({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          height: 70,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.black,
          ),
          child: TextField(
            decoration: InputDecoration(
                  label: Text(label,
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                  fontSize: 22,
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



 
