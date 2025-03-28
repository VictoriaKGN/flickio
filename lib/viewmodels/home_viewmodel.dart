// Flutter & Dart
import 'package:flutter/material.dart';

// Stubs
import 'package:flickio/data/stubs/trending.dart';
import 'package:flickio/data/stubs/now_playing.dart';
import 'package:flickio/data/stubs/popular.dart';
import 'package:flickio/data/stubs/top_rated.dart';
import 'package:flickio/data/stubs/upcoming.dart';

// Models
import '../models/movie.dart';

// Services
import '../services/movie_api_service.dart';

class HomeViewModel extends ChangeNotifier {
  final MovieApiService apiService;
  final List<(String, Future<List<Movie>> Function())> sections;

  HomeViewModel(this.apiService)
    : sections = [
        ('Trending', apiService.getTrending),
        ('In Theaters', apiService.getNowPlaying),
        ('Popular', apiService.getPopular),
        ('Top Rated', apiService.getTopRated),
        ('Upcoming', apiService.getUpcoming),
      ];
}
