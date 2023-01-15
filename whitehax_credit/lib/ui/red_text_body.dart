import 'package:flutter/material.dart';

class RedTextBody extends StatelessWidget {
  final String data;
  const RedTextBody({required this.data}) : super();

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      textAlign: TextAlign.center,
      style: const TextStyle(
          fontStyle: FontStyle.normal, fontSize: 20, color: Colors.red),
    );
  }
}
