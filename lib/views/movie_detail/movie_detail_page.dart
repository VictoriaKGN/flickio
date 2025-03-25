// Flutter
import 'package:flickio/views/movie_detail/movie_detail_desktop.dart';
import 'package:flutter/material.dart';

// Models
import '../../models/movie.dart';

// Widgets

class MovieDetailPage extends StatelessWidget {
  final Movie movie;

  const MovieDetailPage({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final bool isMobile = screenWidth < 600;

    return Scaffold(body: isMobile ? null : MovieDetailDesktop(movie: movie));
  }
}
