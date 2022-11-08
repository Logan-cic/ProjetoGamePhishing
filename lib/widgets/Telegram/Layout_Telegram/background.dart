import 'package:flutter/material.dart';

class Background extends StatelessWidget {

  final url =
      'https://i.pinimg.com/564x/20/99/f2/2099f2dda704cb708fe20347afb964ba.jpg';

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
             image:
                DecorationImage(image: NetworkImage(url), fit: BoxFit.cover)));
  }
}
