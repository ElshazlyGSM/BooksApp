import 'package:flutter/material.dart';
import 'book_details_list_view.dart';

class BookDetailsViewPart2 extends StatelessWidget {
  const BookDetailsViewPart2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Text(
        'You can also like',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      SizedBox(
        height: 16,
      ),
      BookDetailsListView()
    ],);
  }
}
