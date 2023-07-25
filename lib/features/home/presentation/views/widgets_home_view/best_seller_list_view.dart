import 'package:bookly/core/utils/style.dart';
import 'package:bookly/core/widgets/custom_message_err.dart';
import 'package:bookly/features/home/presentation/manger/newest_books_cubit/newest_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'book_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBookCubit, NewestBookState>(
      builder: (context, state) {
        if(state is NewestBookSuccess){
          return ListView.builder(
            shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return  Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: BookItem(bookModel: state.books[index]),
                );
              });
        }else if(state is NewestBookFailure) {
          return CustomMessageError(message: state.errMessage);
        }else {
          return const Center(child: Column(
            children: [
              CircularProgressIndicator(),
              SizedBox(
                height: 20,
              ),
              Text('Loading data ...',style: Styles.textStyle18,)
            ],
          ));
        }
      },
    );
  }
}

