import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'widgets_book_details_view/custom_appbar_book_details_view.dart';

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
    return Column(
      children:  [
        const CustomAppbarBookDetailsView(),
        const SizedBox(height: 35,),
        Container(height: 400, child: Image.asset(AssetsData.testImage)),
      ],
    );
  }
}
