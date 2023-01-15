import 'package:flutter/material.dart';

class DarkTextBody extends StatelessWidget {
  final String data;
  const DarkTextBody({required this.data}) : super();

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      textAlign: TextAlign.center,
      style: const TextStyle(
          fontStyle: FontStyle.normal, fontSize: 14, color: Colors.black),
    );
  }
}
