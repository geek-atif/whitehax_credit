import 'package:flutter/material.dart';

class GreenTextBodySmall extends StatelessWidget {
  final String data;
  const GreenTextBodySmall({required this.data}) : super();

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      textAlign: TextAlign.center,
      style: const TextStyle(
          fontStyle: FontStyle.normal, fontSize: 16, color: Colors.green),
    );
  }
}
