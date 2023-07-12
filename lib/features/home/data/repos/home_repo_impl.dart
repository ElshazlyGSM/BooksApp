import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/repo_home.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  HomeRepoImpl(this.apiService);

  final ApiService apiService;

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBook() async {
    try {
      var data = await apiService.get(
        'volumes?Filtering=free-ebooks&Sorting=newest &q=computer science',
      );
      List<BookModel> books = [];
      for(var item in data['items']){
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
     if(e is DioException){
       return left(ServerFailure(e.toString()));
     } return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBook()async {
    try {
      var data = await apiService.get(
        'volumes?Filtering=free-ebooks&q=computer science',
      );
      List<BookModel> books = [];
      for(var item in data['items']){
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if(e is DioException){
        return left(ServerFailure(e.toString()));
      } return left(ServerFailure(e.toString()));
    }
  }
}
