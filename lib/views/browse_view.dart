// Flutter
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// View Models
import '../viewmodels/browse_viewmodel.dart';

// Widgets
import 'widgets/search_bar.dart';
import 'widgets/genre_filter.dart';
import '../views/widgets/movie_list.dart';

class BrowseView extends StatefulWidget {
  const BrowseView({super.key});

  @override
  State<BrowseView> createState() => _BrowseViewState();
}

class _BrowseViewState extends State<BrowseView> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _clearSearch() {
    _searchController.clear();
    Provider.of<BrowseViewmodel>(context, listen: false).updateSearch('');
  }

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<BrowseViewmodel>(context);
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
                  MovieSearchBar(
                    controller: _searchController,
                    onChanged: vm.updateSearch,
                  ),

                  SizedBox(height: 20),

                  GenreFilter(
                    selected: vm.selectedGenre,
                    onSelect: (genre) {
                      _clearSearch();
                      vm.updateGenre(genre);
                    },
                  ),
                ],
              )
            else
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MovieSearchBar(
                    controller: _searchController,
                    onChanged: vm.updateSearch,
                  ),

                  SizedBox(width: 20),

                  Expanded(
                    child: GenreFilter(
                      selected: vm.selectedGenre,
                      onSelect: (genre) {
                        _clearSearch();
                        vm.updateGenre(genre);
                      },
                    ),
                  ),
                ],
              ),

            SizedBox(height: 20),

            if (vm.isLoading)
              Center(child: CircularProgressIndicator())
            else if (vm.isError)
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("There was an error fetching movies."),
                    SizedBox(height: 10),
                    FilledButton(
                      onPressed: vm.loadMovies,
                      child: const Text("Retry"),
                    ),
                  ],
                ),
              )
            else if (vm.movies != null && vm.movies!.isNotEmpty)
              Expanded(child: MovieList(movies: vm.movies!))
            else
              Center(child: Text("No movies found.")),
          ],
        ),
      ),
    );
  }
}
