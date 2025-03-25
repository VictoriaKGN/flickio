// Flutter
import 'package:flutter/material.dart';

// Models
import '../../models/movie.dart';

class MovieCard extends StatelessWidget {
  final Movie movie;

  const MovieCard({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final bool isMobile = screenWidth < 600;
    final double posterHeight = isMobile ? 150 : 200;
    final double posterWidth = isMobile ? 100 : 150;

    return SizedBox(
      width: posterWidth,
      height: posterHeight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              movie.fullCardPosterUrl,
              height: posterHeight,
              width: posterWidth,
              fit: BoxFit.cover,
              errorBuilder:
                  (context, error, stackTrace) => Container(
                    color: Colors.grey[300],
                    height: posterHeight,
                    width: posterWidth,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
