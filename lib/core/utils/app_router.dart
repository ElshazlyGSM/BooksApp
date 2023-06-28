import 'package:bookly/features/Splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/presentation/views/Book_details_view.dart';
import '../../features/home/presentation/views/home_view.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetails = '/bookDetailsView';
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
        path: kBookDetails,
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );
}
