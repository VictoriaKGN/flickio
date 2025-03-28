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
    final userVM = Provider.of<UserViewModel>(context);
    final isMobile = MediaQuery.of(context).size.width < 600;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
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

            SizedBox(height: 40),

            Expanded(child: MovieList(movies: userVM.user.watchlist)),
          ],
        ),
      ),
    );
  }
}
