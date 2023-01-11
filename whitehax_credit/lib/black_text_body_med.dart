import 'package:flutter/material.dart';

class BlackTextBodyMed extends StatelessWidget {
  final String data;
  const BlackTextBodyMed({required this.data}) : super();

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      textAlign: TextAlign.center,
      style: const TextStyle(
          fontStyle: FontStyle.normal, fontSize: 18, color: Colors.white),
    );
  }
}
