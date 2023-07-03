import 'package:flutter/material.dart';
import 'book_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context,index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: BookItem(),
          );
        });
  }
}