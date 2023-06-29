import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';
import '../widgets_home_view/custom_book_image.dart';
import 'custom_appbar_book_details_view.dart';
import 'price_row.dart';
import 'rating_row_book_details.dart';

class BookDetailsViewPart1 extends StatelessWidget {
  const BookDetailsViewPart1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(children: [
      const CustomAppbarBookDetailsView(),
      const SizedBox(
        height: 33,
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: width * .17),
        child: const CustomBookImage(),
      ),
      const SizedBox(
        height: 43,
      ),
      const Text(
        'The Jungle Book',
        style: Styles.textStyle30,
      ),
      const SizedBox(
        height: 4,
      ),
      const Opacity(
        opacity: .6,
        child: Text(
          'Rudyard Kipling',
          style: Styles.textStyle18,
        ),
      ),
      const SizedBox(
        height: 14,
      ),
      const RatingRowBookDetails(),
      const SizedBox(
        height: 37,
      ),
      const PriceRow(),
    ],);
  }
}
