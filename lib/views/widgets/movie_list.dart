// Flutter
import 'package:flutter/material.dart';

// Models
import '../../models/movie.dart';

// Widgets
import 'package:flickio/views/widgets/movie_card.dart';

class MovieList extends StatelessWidget {
  final List<Movie> movies;
  final double posterWidth;
  final double minSpacing;
  final double maxSpacing;

  const MovieList({
    super.key,
    required this.movies,
    this.posterWidth = 150,
    this.minSpacing = 50,
    this.maxSpacing = 100,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final totalWidth = constraints.maxWidth;

        int postersPerRow =
            ((totalWidth + minSpacing) / (posterWidth + minSpacing)).floor();
        postersPerRow = postersPerRow.clamp(3, 8);

        final totalPosterWidth = posterWidth * postersPerRow;
        final remainingWidth = totalWidth - totalPosterWidth;
        double spacing = (remainingWidth / (postersPerRow - 1));
        spacing = spacing.clamp(minSpacing, maxSpacing);

        return GridView.builder(
          // shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: movies.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: postersPerRow,
            crossAxisSpacing: spacing,
            mainAxisSpacing: 50,
            childAspectRatio: 2 / 3,
          ),
          itemBuilder: (context, index) {
            final movie = movies[index];
            return MovieCard(movie: movie);
          },
        );
      },
    );
  }
}
