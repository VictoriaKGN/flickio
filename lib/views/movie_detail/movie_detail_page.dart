// Flutter
import 'package:flutter/material.dart';

// Models
import '../../models/movie.dart';

// Widgets
import 'movie_detail_desktop.dart';
import 'movie_detail_mobile.dart';

class MovieDetailPage extends StatelessWidget {
  final Movie movie;

  const MovieDetailPage({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final bool isMobile = screenWidth < 600;

    return Scaffold(
      body:
          isMobile
              ? MovieDetailMobile(movie: movie)
              : MovieDetailDesktop(movie: movie),
    );
  }
}
