// Flutter
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

// Models
import '../../models/movie.dart';

class MovieDetailDesktop extends StatelessWidget {
  final Movie movie;

  const MovieDetailDesktop({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40),
      child: Row(
        children: [
          // left side - poster
          Align(
            alignment: Alignment.topLeft,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxHeight: 900),
                child: Image.network(
                  movie.fullBannerPosterUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(width: 40),

          // right side - movie details
          Expanded(
            flex: 2,
            child: ConstrainedBox(
              constraints: BoxConstraints(minWidth: 400),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    movie.title,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),

                  SizedBox(height: 16),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(movie.releaseDate),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(movie.ratingCount.toString()),

                          SizedBox(width: 10),

                          RatingBarIndicator(
                            rating: movie.ratingAverage / 2,
                            itemBuilder:
                                (context, index) =>
                                    Icon(Icons.star, color: Colors.amber),
                            itemCount: 5,
                            itemSize: 18,
                            direction: Axis.horizontal,
                          ),
                        ],
                      ),
                    ],
                  ),

                  SizedBox(height: 16),

                  Text(movie.overview),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
