import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';

class CustomMessageError extends StatelessWidget {
  const CustomMessageError({Key? key, required this.message}) : super(key: key);
  final String message;
  @override
  Widget build(BuildContext context) {
    return Text(message, style: Styles.textStyle18,);
  }
}
