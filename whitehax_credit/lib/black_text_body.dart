import 'package:flutter/material.dart';

class BlackTextBody extends StatelessWidget {
  final String data;
  const BlackTextBody({required this.data}) : super();

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      textAlign: TextAlign.center,
      style: const TextStyle(
          fontStyle: FontStyle.normal, fontSize: 20, color: Colors.white),
    );
  }
}
