import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/repo_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.homeRepo) : super(SearchInitial());
  final HomeRepo homeRepo;

  Future<void> fetchSearch(String searchValue) async{
    emit(SearchLoading());
    var result = await homeRepo.searchBook(searchValue: searchValue);
    result.fold((failure) => {
      emit(SearchFailure(failure.errMessage))
    }, (books) => {emit(SearchSuccess(books))});
  }
}
