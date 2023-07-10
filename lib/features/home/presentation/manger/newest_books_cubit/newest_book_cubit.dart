import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/book_model/BookModel.dart';
import 'package:bookly/features/home/data/repos/repo_home.dart';
import 'package:meta/meta.dart';

part 'newest_book_state.dart';

class NewestBookCubit extends Cubit<NewestBookState> {
  NewestBookCubit(this.homeRepo) : super(NewestBookInitial());

  final HomeRepo homeRepo;

  Future<void> fetchNewestBooks() async {
    emit(NewestBookLoading());
    var result = await homeRepo.fetchFeaturedBook();
    result.fold((failure) {
      emit(NewestBookFailure(failure.errMessage));
    }, (books) {
      emit(NewestBookSuccess(books));
    });
  }
}
