// Flutter & Dart
import 'package:flickio/theme/color_scheme.dart';
import 'package:flickio/views/movie_detail/movie_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:url_strategy/url_strategy.dart';

// Views
import 'views/home_view.dart';
import 'views/browse_view.dart';
import 'main_container.dart';
import 'views/watchlist_view.dart';

// View Models
import 'viewmodels/home_viewmodel.dart';
import 'viewmodels/browse_viewmodel.dart';
import 'viewmodels/user_viewmodel.dart';
import 'viewmodels/watchlist_viewmodel.dart';

// Models
import 'models/movie.dart';

// API Services
import 'services/movie_api_service.dart';

final movieApiService = MovieApiService();

// Router
// https://blog.codemagic.io/flutter-go-router-guide/
final GoRouter _router = GoRouter(
  routes: [
    ShellRoute(
      builder: (context, state, child) {
        return MainContainer(child: child);
      },
      routes: [
        GoRoute(
          path: "/",
          builder:
              (context, state) => ChangeNotifierProvider(
                create: (_) => HomeViewModel(movieApiService),
                child: const HomeView(),
              ),
        ),
        GoRoute(
          path: "/browse",
          builder:
              (context, state) => ChangeNotifierProvider(
                create: (_) => BrowseViewmodel(movieApiService),
                child: const BrowseView(),
              ),
        ),
        GoRoute(
          path: "/movie/:id",
          builder: (context, state) {
            final movie = state.extra as Movie;
            return MovieDetailPage(movie: movie);
          },
        ),
        GoRoute(
          path: "/watchlist",
          builder:
              (context, state) => ChangeNotifierProvider(
                create: (context) {
                  final userVM = Provider.of<UserViewModel>(
                    context,
                    listen: false,
                  );
                  return WatchlistViewmodel(userVM);
                },
                child: const WatchlistView(),
              ),
        ),
      ],
    ),
  ],
);

/// Main container for the app
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
  await dotenv.load(fileName: '.env');

  final userVM = UserViewModel();
  await userVM.loadUserData();

  runApp(
    ChangeNotifierProvider<UserViewModel>.value(
      value: userVM,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flickio',
      theme: ThemeData(colorScheme: colorScheme),
      routerConfig: _router,
    );
  }
}
