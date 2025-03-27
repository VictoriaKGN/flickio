// Flutter
import 'package:flickio/data/stubs/now_playing.dart';
import 'package:flickio/views/widgets/movie_section.dart';
import 'package:flickio/views/widgets/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// View Models
import '../viewmodels/browse_viewmodel.dart';

// Widgets
import 'widgets/search_bar.dart';
import 'widgets/genre_filter.dart';
import '../views/widgets/movie_list.dart';

class BrowseView extends StatelessWidget {
  const BrowseView({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<BrowseViewmodel>(context);
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

            Expanded(child: MovieList(movies: vm.movies)),
          ],
        ),
      ),
    );
  }
}
