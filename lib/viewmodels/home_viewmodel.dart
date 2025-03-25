// Flutter & Dart
import 'package:flutter/material.dart';

// Stubs
import 'package:flickio/data/stubs/now_playing.dart';

// Models
import '../models/movie.dart';

class HomeViewModel extends ChangeNotifier {
  // final MovieApiService apiService;

  // List<Movie> trending = [];
  List<Movie> nowPlaying = [Movie(id: 822119, title: "Beep Boop", posterPath: "/pzIddUEMWhWzfvLI3TwxUG2wGoi.jpg", backdropPath: "/qfAfE5auxsuxhxPpnETRAyTP5ff.jpg")];
  // List<Movie> upcoming = [];

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
    // trending = mockTrendingMovies;
    nowPlaying = getNowPlayingMovies();
    // upcoming = mockUpcomingMovies;
    notifyListeners();
  }
}
