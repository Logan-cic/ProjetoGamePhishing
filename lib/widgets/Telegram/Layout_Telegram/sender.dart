import 'package:flutter/material.dart';

Widget Sender() {
  return Container(
      height: 50,
      color: Color.fromARGB(255, 39, 51, 62),
      child: TextField(
          maxLines: 1,
          style: TextStyle(fontSize: 17, color: Colors.white),
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Mensagem',
              hintStyle: TextStyle(
                  color: Color.fromARGB(255, 136, 140, 144), fontSize: 18),
              filled: true,
              prefixIcon: Icon(
                Icons.insert_emoticon_outlined,
                color: Color.fromARGB(255, 136, 140, 144),
                size: 30,
              ),
              suffixIcon: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Icon(Icons.attachment_outlined,
                        color: Color.fromARGB(255, 136, 140, 144), size: 30),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5, right: 10.0),
                    child: Icon(Icons.mic_none_outlined,
                        color: Color.fromARGB(255, 136, 140, 144), size: 30),
                  )
                ],
              ))));
}
