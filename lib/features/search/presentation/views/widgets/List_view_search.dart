import 'package:bookly/core/widgets/custom_message_err.dart';
import 'package:bookly/features/home/presentation/manger/newest_books_cubit/newest_book_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets_home_view/book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchListView extends StatelessWidget {
  const SearchListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBookCubit, NewestBookState>(
      builder: (context, state) {
        if (state is NewestBookSuccess) {
          return ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              padding: EdgeInsets.zero,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: BookItem(bookModel: state.books[index]),
                );
              });
        } else if (state is NewestBookFailure) {
          return CustomMessageError(message: state.errMessage);
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
