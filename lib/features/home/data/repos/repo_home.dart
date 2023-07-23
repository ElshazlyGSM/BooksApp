import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchNewestBook();

  Future<Either<Failure, List<BookModel>>> fetchFeaturedBook();

  Future<Either<Failure, List<BookModel>>> fetchRelatedBook();
}
