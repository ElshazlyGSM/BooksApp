import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/repo_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'related_book_state.dart';

class RelatedBookCubit extends Cubit<RelatedBookState> {
  RelatedBookCubit(this.homeRepo) : super(RelatedBookInitial());
 final HomeRepo homeRepo;

  Future<void> fetchRelatedBooks() async{
    emit(RelatedBookLoading());
   var result = await homeRepo.fetchRelatedBook();
   result.fold((failure) => {
     emit(RelatedBookFailure(failure.errMessage))
   }, (books) => {emit(RelatedBookSuccess(books))});
  }
}
