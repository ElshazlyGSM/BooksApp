import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/book_model/BookModel.dart';
import 'package:meta/meta.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit() : super(FeaturedBooksInitial());
}
