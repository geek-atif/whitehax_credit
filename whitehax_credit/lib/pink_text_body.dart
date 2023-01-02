import 'package:flutter/material.dart';

class PinkTextBody extends StatelessWidget {
  final String data;
  const PinkTextBody({required this.data}) : super();

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      textAlign: TextAlign.center,
      style: const TextStyle(
        color: Colors.pink,
        fontStyle: FontStyle.normal,
        fontSize: 20,
      ),
    );
  }
}
