import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';

class PriceButton extends StatelessWidget {
  const PriceButton(
      {Key? key,
        this.borderRadius = BorderRadius.zero,
        required this.text,
        this.backgroundColor,
        this.textColor})
      : super(key: key);

  final BorderRadiusGeometry borderRadius;
  final String text;
  final Color? backgroundColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius,
          ),
        ),
        onPressed: () {},
        child: Text(
          text,
          style: Styles.textStyle18.copyWith(color: textColor),
        ),
      ),
    );
  }
}