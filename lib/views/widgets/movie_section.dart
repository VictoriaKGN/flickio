// Flutter & Dart
import 'package:flutter/material.dart';

// Widgets
import 'movie_card.dart';

// Models
import '../../models/movie.dart';

class MovieSection extends StatelessWidget {
  final String title;
  final List<Movie> movies;

  const MovieSection({super.key, required this.title, required this.movies});

  @override
  Widget build(BuildContext context) {
    if (movies.isEmpty) return SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 18,
            color: Theme.of(context).colorScheme.tertiary,
          ),
        ),

        SizedBox(height: 20),

        SizedBox(
          height: 230,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: movies.length,
            itemBuilder: (context, index) {
              return MovieCard(movie: movies[index]);
            },
            separatorBuilder: (_, _) => const SizedBox(width: 24),
          ),
        ),
      ],
    );
  }
}
