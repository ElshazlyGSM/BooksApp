part of 'related_book_cubit.dart';

@immutable
abstract class RelatedBooksState {}

class RelatedBookInitial extends RelatedBooksState {}
class RelatedBookLoading extends RelatedBooksState {}
class RelatedBookSuccess extends RelatedBooksState {
  final List<BookModel> book;

  RelatedBookSuccess(this.book);
}
class RelatedBookFailure extends RelatedBooksState {
  final String errMessage;

  RelatedBookFailure(this.errMessage);
}
