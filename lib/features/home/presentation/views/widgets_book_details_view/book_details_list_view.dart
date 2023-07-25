import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/widgets/custom_message_err.dart';
import 'package:bookly/features/home/presentation/manger/fetch_related_book/related_book_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets_home_view/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shimmer/shimmer.dart';
import '../widgets_home_view/custom_book_image.dart';

class BookDetailsListView extends StatelessWidget {
  const BookDetailsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RelatedBooksCubit, RelatedBooksState>(
      builder: (context, state) {
        if (state is RelatedBookSuccess) {
          return SizedBox(
            height: MediaQuery
                .of(context)
                .size
                .height * .15,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.zero,
                itemCount: state.book.length,
                itemBuilder: (context, index) {
                  return  GestureDetector(
                    onTap: (){
                      GoRouter.of(context).push(AppRouter.kBookDetailsView,extra: state.book[index]);
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: CustomBookImage(imageUrl: state.book[index].volumeInfo.imageLinks.smallThumbnail),
                    ),
                  );
                }),
          );
        } else if (state is RelatedBookFailure) {
          return CustomMessageError(message: state.errMessage);
        } else {
          return Shimmer.fromColors(
            baseColor: Colors.grey.shade300,
            highlightColor: Colors.grey.shade100,
            child: const LoadingWidget(padding: 8),
          );
        }
      },
    );
  }
}
