import 'package:calculator_app/constancs.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback onpress;
  const MyButton(
      {Key? key,
      required this.title,
      this.color = const Color(0xfa4a4a4a4),
      required this.onpress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onpress,
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Container(
            alignment: Alignment.center,
            width: 70,
            height: 70,
            decoration: BoxDecoration(color: color, shape: BoxShape.circle),
            child: Text(
              title,
              style: const TextStyle(
                  color: white, fontWeight: FontWeight.bold, fontSize: 28),
            ),
          ),
        ),
      ),
    );
  }
}
