// Flutter & Dart
import 'package:flutter/material.dart';

// Views
import 'views/widgets/nav_bar.dart';

// Controllers
import 'controllers/bottom_sheet_controller.dart';

// Widgets
import 'views/movie_detail/widgets/movie_header.dart';
import 'views/movie_detail/widgets/action_buttons.dart';
import 'views/widgets/top_bar.dart';

// Models
import 'models/movie.dart';

/// Wrapper widget for other views
/// Includes nav bar and top bar 
class MainContainer extends StatelessWidget {
  final Widget child;

  const MainContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 600;

    return Scaffold(
      body:
          isMobile
              ? Stack(
                children: [
                  Column(
                    children: [
                      // top bar
                      ValueListenableBuilder<bool>(
                        valueListenable: bottomSheetController.isVisible,
                        builder: (context, visible, _) {
                          if (visible) return SizedBox.shrink();

                          return Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: TopBar(),
                          );
                        },
                      ),

                      // page content
                      Expanded(child: child),

                      // bottom nav bar
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: NavBar(),
                      ),
                    ],
                  ),

                  ValueListenableBuilder<bool>(
                    valueListenable: bottomSheetController.isVisible,
                    builder: (context, visible, _) {
                      if (!visible) return SizedBox.shrink();

                      return DraggableScrollableSheet(
                        initialChildSize: 0.45,
                        minChildSize: 0.45,
                        maxChildSize: 0.9,
                        builder: (context, scrollController) {
                          return ValueListenableBuilder<Movie?>(
                            valueListenable: bottomSheetController.data,
                            builder: (context, movie, _) {
                              if (movie == null) return SizedBox.shrink();

                              return Container(
                                decoration: BoxDecoration(
                                  color: Theme.of(context).colorScheme.surface,
                                  borderRadius: const BorderRadius.vertical(
                                    top: Radius.circular(24),
                                  ),
                                ),
                                child: ListView(
                                  controller: scrollController,
                                  padding: const EdgeInsets.all(24),
                                  children: [
                                    MovieHeader(
                                      title: movie.title,
                                      releaseDate: movie.releaseDate,
                                      ratingCount: movie.ratingCount,
                                      ratingAverage: movie.ratingAverage,
                                    ),

                                    SizedBox(height: 15),

                                    Text(movie.overview),

                                    SizedBox(height: 15),

                                    ActionButtons(movie: movie),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                      );
                    },
                  ),
                ],
              )
              : Column(
                children: [
                  // top bar with nav bar
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 30,
                      horizontal: 40,
                    ),
                    child: TopBar(),
                  ),

                  // page content
                  Expanded(child: child),
                ],
              ),
      // ),
    );
  }
}
