import 'package:flutter/material.dart';
import 'price_button.dart';

class PriceRow extends StatelessWidget {
  const PriceRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:  [
        Expanded(
          child: PriceButton(
            text: '19.99€',
            backgroundColor: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              topLeft: Radius.circular(15),
            ),
            textColor: Colors.black,
          ),
        ),
        Expanded(
          child: PriceButton(
            text: 'Free preview',
            backgroundColor: Color(0xffEF8262),
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            textColor: Colors.white,
          ),
        ),
      ],
    );
  }
}


