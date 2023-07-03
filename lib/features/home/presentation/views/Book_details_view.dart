import 'package:flutter/material.dart';
import 'widgets_book_details_view/book_details_view_part1.dart';
import 'widgets_book_details_view/book_details_view_part2.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SafeArea(
            child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: const [
                  BookDetailsViewPart1(),
                  Expanded(
                    child: SizedBox(
                      height: 49,
                    ),
                  ),
                  BookDetailsViewPart2(),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
