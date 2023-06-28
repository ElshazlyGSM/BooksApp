import 'package:flutter/material.dart';

class CustomAppbarBookDetailsView extends StatelessWidget {
  const CustomAppbarBookDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.close,size: 25),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.shopping_cart_outlined,size: 25),
        ),
      ],
    );
  }
}