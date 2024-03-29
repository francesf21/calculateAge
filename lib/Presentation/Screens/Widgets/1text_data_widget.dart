import 'package:flutter/material.dart';

class TextData extends StatelessWidget {
  const TextData({Key? key, required this.message}) : super(key: key);

  final String message;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'Tu eres un ',
        style: const TextStyle(
          fontSize: 25.00,
          color: Colors.black,
        ),
        children: <TextSpan>[
          TextSpan(
            text: message,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 35.00,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
