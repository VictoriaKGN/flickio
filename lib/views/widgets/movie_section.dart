// Flutter & Dart
import 'package:flutter/material.dart';

// Widgets
import 'movie_card.dart';

// Models
import '../../models/movie.dart';

class MovieSection extends StatefulWidget {
  final String title;
  final Future<List<Movie>> Function() fetchMovies;

  const MovieSection({
    super.key,
    required this.title,
    required this.fetchMovies,
  });

  @override
  State<MovieSection> createState() => _MovieSectionState();
}

class _MovieSectionState extends State<MovieSection> {
  List<Movie>? movies;
  bool isLoading = false;
  bool error = false;

  @override
  void initState() {
    super.initState();
    _loadMovies();
  }

  Future<void> _loadMovies() async {
    setState(() {
      isLoading = true;
      error = false;
    });

    try {
      movies = await widget.fetchMovies();
    } catch (e) {
      error = true;
    } finally {
      isLoading = false;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: TextStyle(
            fontSize: 18,
            color: Theme.of(context).colorScheme.tertiary,
          ),
        ),

        SizedBox(height: 20),

        if (isLoading)
          SizedBox(
            height: 230,
            child: Center(child: CircularProgressIndicator()),
          )
        else if (error)
          Center(
            child: SizedBox(
              height: 230,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("There was an error fetching movies for this section."),
                  SizedBox(height: 10),
                  FilledButton(
                    onPressed: _loadMovies,
                    child: const Text("Retry"),
                  ),
                ],
              ),
            ),
          )
        else if (movies != null && movies!.isNotEmpty)
          SizedBox(
            height: 230,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: movies!.length,
              itemBuilder: (context, index) {
                return MovieCard(movie: movies![index]);
              },
              separatorBuilder: (_, _) => const SizedBox(width: 24),
            ),
          )
        else
          SizedBox(height: 230, child: const Text("No movies found.")),
      ],
    );
  }
}
