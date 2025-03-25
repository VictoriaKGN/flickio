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

class HomeViewModel extends ChangeNotifier {
  // final MovieApiService apiService;

  List<Movie> trending = [];
  List<Movie> nowPlaying = [];
  List<Movie> popular = [];
  List<Movie> topRated = [];
  List<Movie> upcoming = [];

  // HomeViewModel(this.apiService) {
  //   loadMovies();
  // }
  HomeViewModel() {
    loadMovies();
  }

  Future<void> loadMovies() async {
    //   trending = await apiService.fetchTrendingMovies();
    //   nowPlaying = await apiService.fetchNowPlayingMovies();
    //   upcoming = await apiService.fetchUpcomingMovies();
    //   notifyListeners();
    trending = getTrendingMovies();
    nowPlaying = getNowPlayingMovies();
    popular = getPopularMovies();
    topRated = getTopRatedMovies();
    upcoming = getUpcomingMovies();
    notifyListeners();
  }
}
