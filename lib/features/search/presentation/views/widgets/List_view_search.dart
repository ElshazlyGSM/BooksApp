import 'package:bookly/core/widgets/custom_message_err.dart';
import 'package:bookly/features/home/presentation/views/widgets_home_view/book_item.dart';
import 'package:bookly/features/search/presentation/maner/search_cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchListView extends StatelessWidget {
  const SearchListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchSuccess) {
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
        } else if (state is SearchFailure) {
          return CustomMessageError(message: state.errMessage);
        }
        return Container();
      },
    );
  }
}
