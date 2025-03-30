// Flutter
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// View Models
import '../viewmodels/user_viewmodel.dart';
import '../viewmodels/watchlist_viewmodel.dart';

// Widgets
import 'widgets/search_bar.dart';
import 'widgets/genre_filter.dart';
import '../views/widgets/movie_list.dart';

class WatchlistView extends StatelessWidget {
  const WatchlistView({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<WatchlistViewmodel>(context);
    final isMobile = MediaQuery.of(context).size.width < 600;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: isMobile ? 20 : 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (isMobile)
              Column(
                children: [
                  MovieSearchBar(onChanged: vm.updateSearch),

                  SizedBox(height: 20),

                  GenreFilter(
                    selected: vm.selectedGenre,
                    onSelect: vm.updateGenre,
                  ),
                ],
              )
            else
              Row(
                children: [
                  MovieSearchBar(onChanged: vm.updateSearch),

                  SizedBox(width: 20),

                  Expanded(
                    child: GenreFilter(
                      selected: vm.selectedGenre,
                      onSelect: vm.updateGenre,
                    ),
                  ),
                ],
              ),

            SizedBox(height: 20),

            Expanded(child: MovieList(movies: vm.filteredWatchlist)),
          ],
        ),
      ),
    );
  }
}
