// Flutter
import 'package:flutter/material.dart';

// Models
import '../models/genre.dart';
import '../models/movie.dart';

// Stubs
import 'package:flickio/data/stubs/trending.dart';

class BrowseViewmodel extends ChangeNotifier {
  List<Movie> movies = [];
  String searchQuery = "";
  Genre? selectedGenre;
  int currPage = 1;
  bool isLoading = false;

  BrowseViewmodel() {
    loadMovies();
  }

  Future<void> loadMovies() async {
    isLoading = true;
    notifyListeners();

    // TODO: actually fetch from API, take searchQuery & selectedGenre & currPage into account
    movies = getTrendingMovies();

    isLoading = false;
    notifyListeners();
  }

  void updateSearch(String query) {
    searchQuery = query;
    currPage = 1;
    loadMovies();
  }

  void updateGenre(Genre? genre) {
    selectedGenre = genre;
    currPage = 1;
    loadMovies();
  }

  void goToPage(int page) {
    currPage = page;
    loadMovies();
  }
}