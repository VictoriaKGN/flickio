// Flutter
import 'package:flutter/material.dart';

// Models
import '../../models/movie.dart';

// Widgets
import 'widgets/movie_poster.dart';
import 'widgets/movie_header.dart';
import 'widgets/genre_chips.dart';
import 'widgets/action_buttons.dart';

class MovieDetailDesktop extends StatelessWidget {
  final Movie movie;

  const MovieDetailDesktop({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40),
      child: LayoutBuilder(
        builder: (context, constraints) {
          const double minInfoWidth = 500;
          const double maxPosterWidth = 800;
          const double spacing = 40;

          double totalWidth = constraints.maxWidth;

          double posterWidth = totalWidth - minInfoWidth - spacing;
          posterWidth = posterWidth.clamp(100, maxPosterWidth);

          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MoviePoster(
                imageUrl: movie.fullBannerPosterUrl,
                maxWidth: posterWidth,
              ),

              SizedBox(width: spacing),

              // right side - movie details
              Expanded(
                child: ConstrainedBox(
                  constraints: BoxConstraints(minWidth: minInfoWidth),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MovieHeader(
                        title: movie.title,
                        releaseDate: movie.releaseDate,
                        ratingCount: movie.ratingCount,
                        ratingAverage: movie.ratingAverage,
                      ),

                      SizedBox(height: 35),

                      Text(movie.overview),

                      SizedBox(height: 35),

                      GenreChips(genres: movie.genres),

                      SizedBox(height: 35),

                      ActionButtons(movie: movie),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
