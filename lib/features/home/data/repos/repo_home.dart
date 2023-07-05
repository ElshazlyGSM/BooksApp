import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/features/home/data/models/book_model/BookModel.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBook();

  Future<Either<Failure, List<BookModel>>> fetchFeaturedBook();
}
