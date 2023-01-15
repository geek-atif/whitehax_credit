import 'package:flutter/material.dart';

class DarkTextHead extends StatelessWidget {
  final String data;
  const DarkTextHead({required this.data}) : super();

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      textAlign: TextAlign.center,
      style: const TextStyle(
          fontStyle: FontStyle.normal, fontSize: 20, color: Colors.black),
    );
  }
}
