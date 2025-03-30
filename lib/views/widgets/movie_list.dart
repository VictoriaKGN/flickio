// Flutter
import 'package:flutter/material.dart';

// Models
import '../../models/movie.dart';

// Widgets
import 'package:flickio/views/widgets/movie_card.dart';

class MovieList extends StatelessWidget {
  final List<Movie> movies;

  const MovieList({
    super.key,
    required this.movies,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = screenWidth < 600;

    final double posterWidth = isMobile ? 100 : 150;
    final double minSpacing = isMobile ? 20 : 50;
    final double maxSpacing = isMobile ? 50 : 100;
    final double mainAxisSpacing = isMobile ? 20 : 50;

    return LayoutBuilder(
      builder: (context, constraints) {
        final totalWidth = constraints.maxWidth;

        int postersPerRow = 
            ((totalWidth + minSpacing) / (posterWidth + minSpacing)).floor();
        postersPerRow = postersPerRow.clamp(2, 8);

        final totalPosterWidth = posterWidth * postersPerRow;
        final remainingWidth = totalWidth - totalPosterWidth;
        double spacing = (remainingWidth / (postersPerRow - 1));
        spacing = spacing.clamp(minSpacing, maxSpacing);

        return GridView.builder(
          padding: EdgeInsets.zero,
          itemCount: movies.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: postersPerRow,
            crossAxisSpacing: spacing,
            mainAxisSpacing: mainAxisSpacing,
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
