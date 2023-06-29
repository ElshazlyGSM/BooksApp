import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'widgets_book_details_view/custom_appbar_book_details_view.dart';
import 'widgets_book_details_view/price_row.dart';
import 'widgets_book_details_view/rating_row_book_details.dart';
import 'widgets_home_view/custom_book_image.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: SafeArea(child: BookDetailsBody()),
      ),
    );
  }
}

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
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
              const Expanded(
                child: SizedBox(
                  height: 49,
                ),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'You can also like',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const BookDetailsListView()
            ],
          ),

        ),

      ],
    );
  }
}

class BookDetailsListView extends StatelessWidget {
  const BookDetailsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.zero,
          itemCount: 10,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: CustomBookImage(),
            );
          }),
    );
  }
}


