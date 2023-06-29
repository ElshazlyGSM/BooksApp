import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppbarBookDetailsView extends StatelessWidget {
  const CustomAppbarBookDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
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