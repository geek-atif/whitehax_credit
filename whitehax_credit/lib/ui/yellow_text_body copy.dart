import 'package:flutter/material.dart';

class YellowTextBody extends StatelessWidget {
  final String data;
  const YellowTextBody({required this.data}) : super();

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      textAlign: TextAlign.center,
      style: const TextStyle(
          fontStyle: FontStyle.normal,
          fontSize: 15,
          color: Colors.yellowAccent),
    );
  }
}
