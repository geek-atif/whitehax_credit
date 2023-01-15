import 'package:flutter/material.dart';

class RedTextBodySmall extends StatelessWidget {
  final String data;
  const RedTextBodySmall({required this.data}) : super();

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      textAlign: TextAlign.center,
      style: const TextStyle(
          fontStyle: FontStyle.normal, fontSize: 15, color: Colors.red),
    );
  }
}
