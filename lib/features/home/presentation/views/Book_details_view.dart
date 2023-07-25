import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/manger/fetch_related_book/related_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'widgets_book_details_view/book_details_view_part1.dart';
import 'widgets_book_details_view/book_details_view_part2.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({Key? key, required this.bookModel}) : super(key: key);
  final BookModel bookModel;

  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<RelatedBooksCubit>(context).fetchRelatedBooks(
        widget.bookModel.volumeInfo.categories![0] ?? '');
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SafeArea(
            child: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Column(
                    children: [
                      BookDetailsViewPart1(bookModel: widget.bookModel,),
                      const Expanded(
                        child: SizedBox(
                          height: 49,
                        ),
                      ),
                      const BookDetailsViewPart2(),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
