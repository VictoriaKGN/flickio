// Flutter
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class MovieHeader extends StatelessWidget {
  final String title;
  final String releaseDate;
  final int ratingCount;
  final double ratingAverage;

  MovieHeader({
    super.key,
    required this.title,
    required this.releaseDate,
    required this.ratingCount,
    required this.ratingAverage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: Theme.of(context).textTheme.headlineMedium),

        SizedBox(height: 16),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(releaseDate),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(ratingCount.toString()),

                SizedBox(width: 10),

                RatingBarIndicator(
                  rating: ratingAverage / 2,
                  itemBuilder:
                      (context, index) => Icon(Icons.star, color: Colors.amber),
                  itemCount: 5,
                  itemSize: 18,
                  direction: Axis.horizontal,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
