import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'widgets_book_details_view/custom_appbar_book_details_view.dart';
import 'widgets_book_details_view/price_row.dart';
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
            Opacity(
              opacity: .6,
              child: Text(
                'Rudyard Kipling',
                style: Styles.textStyle18.copyWith(),
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  size: 15,
                  FontAwesomeIcons.solidStar,
                  color: Color(0xffFFDD4F),
                ),
                SizedBox(
                  width: 6.3,
                ),
                Text(
                  '4.8',
                  style: Styles.textStyle16,
                ),
                SizedBox(
                  width: 9,
                ),
                Text(
                  '(3254)',
                  style: Styles.textStyle14,
                ),
              ],
            ),
            const SizedBox(
              height: 37,
            ),
            const PriceRow(),
          ],
        ),),
      ],
    );
  }
}
