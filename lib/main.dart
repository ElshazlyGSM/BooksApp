import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constants.dart';
import 'core/utils/app_router.dart';
import 'core/utils/service_locator.dart';
import 'features/home/data/repos/home_repo_impl.dart';
import 'features/home/presentation/manger/bloc_observer.dart';
import 'features/home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'features/home/presentation/manger/fetch_related_book/related_book_cubit.dart';
import 'features/home/presentation/manger/newest_books_cubit/newest_book_cubit.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  setupGetIt();
  runApp(const BooksApp());
}

class BooksApp extends StatelessWidget {
  const BooksApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => FeaturedBooksCubit(getIt.get<HomeRepoImpl>())..fetchFeaturedBooks()),
        BlocProvider(create: (context) => NewestBookCubit(getIt.get<HomeRepoImpl>())..fetchNewestBooks()),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
