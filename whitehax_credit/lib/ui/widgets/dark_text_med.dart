import 'package:flutter/material.dart';

class DarkTextMed extends StatelessWidget {
  final String data;
  const DarkTextMed({required this.data}) : super();

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      textAlign: TextAlign.center,
      style: const TextStyle(
          fontStyle: FontStyle.normal, fontSize: 18, color: Colors.black),
    );
  }
}
