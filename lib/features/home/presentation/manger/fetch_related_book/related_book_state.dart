part of 'related_book_cubit.dart';

@immutable
abstract class RelatedBookState {}

class RelatedBookInitial extends RelatedBookState {}
class RelatedBookLoading extends RelatedBookState {}
class RelatedBookSuccess extends RelatedBookState {
  final List<BookModel> book;

  RelatedBookSuccess(this.book);
}
class RelatedBookFailure extends RelatedBookState {
  final String errMessage;

  RelatedBookFailure(this.errMessage);
}
