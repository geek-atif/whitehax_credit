import 'package:flutter/material.dart';

class BlackTextBodySmall extends StatelessWidget {
  final String data;
  const BlackTextBodySmall({required this.data}) : super();

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontStyle: FontStyle.normal,
        fontSize: 16,
      ),
    );
  }
}
