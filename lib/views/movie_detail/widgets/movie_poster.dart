// Flutter
import 'package:flutter/material.dart';

class MoviePoster extends StatelessWidget {
  final String imageUrl;
  final double maxWidth;

  const MoviePoster({
    super.key,
    required this.imageUrl,
    this.maxWidth = double.infinity,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: maxWidth),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.network(imageUrl, fit: BoxFit.cover),
      ),
    );
  }
}
