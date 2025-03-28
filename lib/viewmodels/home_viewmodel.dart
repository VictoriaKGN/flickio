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

  List<Movie> trending = [];
  List<Movie> nowPlaying = [];
  List<Movie> popular = [];
  List<Movie> topRated = [];
  List<Movie> upcoming = [];

  bool isLoading = false;
  bool isError = false;

  // HomeViewModel(this.apiService) {
  //   loadMovies();
  // }
  HomeViewModel(this.apiService) {
    loadMovies();
  }

  Future<void> loadMovies() async {
    isLoading = true;
    notifyListeners();

    try {
      final results = await Future.wait([
        apiService.getTrending(),
        apiService.getNowPlaying(),
        apiService.getPopular(),
        apiService.getTopRated(),
        apiService.getUpcoming(),
      ]);

      trending = results[0];
      nowPlaying = results[1];
      popular = results[2];
      topRated = results[3];
      upcoming = results[4];
    } catch (e) {
      isError = true;
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}
