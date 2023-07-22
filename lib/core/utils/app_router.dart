

import 'package:bookly/features/home/presentation/views/Book_details_view.dart';
import 'package:bookly/features/home/presentation/views/widgets_home_view/loading_widget.dart';
import 'package:bookly/features/search/presentation/views/search_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/Splash/presentation/views/splash_view.dart';
import '../../features/home/presentation/views/home_view.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/SearchView';
  static const kLoadingView = '/LoadingView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => const BookDetailsView(),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
      GoRoute(
        path: kLoadingView,
        builder: (context, state) => const LoadingWidget(),
      ),
    ],
  );
}
