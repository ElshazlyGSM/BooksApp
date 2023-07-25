import 'package:bookly/core/utils/style.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import '../widgets_home_view/custom_book_image.dart';
import 'custom_appbar_book_details_view.dart';
import 'price_row.dart';
import 'rating_row_book_details.dart';

class BookDetailsViewPart1 extends StatelessWidget {
  const BookDetailsViewPart1({Key? key, required this.bookModel})
      : super(key: key);

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const CustomAppbarBookDetailsView(),
        const SizedBox(
          height: 33,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .17),
          child: CustomBookImage(
              imageUrl: bookModel.volumeInfo.imageLinks.thumbnail ?? ''),
        ),
        const SizedBox(
          height: 43,
        ),
        Text(
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          bookModel.volumeInfo.title! ?? '',
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 4,
        ),
        Opacity(
          opacity: .6,
          child: Text(
            bookModel.volumeInfo.authors![0] ?? '',
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
        PriceRow(
          bookModel: bookModel,
        ),
      ],
    );
  }
}
