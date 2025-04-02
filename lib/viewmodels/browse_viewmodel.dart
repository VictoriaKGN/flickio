// Flutter && Dart
import 'dart:async';
import 'package:flutter/material.dart';

// Models
import '../models/genre.dart';
import '../models/movie.dart';

// Stubs
import 'package:flickio/data/stubs/trending.dart';

// Services
import '../services/movie_api_service.dart';

/// View model for browse view
class BrowseViewmodel extends ChangeNotifier {
  final MovieApiService apiService;
  List<Movie>? movies;
  String? searchQuery;
  Genre? selectedGenre;

  int currPage = 1;
  bool isLoading = false;
  bool isError = false;
  Timer? _debounce;

  BrowseViewmodel(this.apiService) {
    loadMovies();
  }

  /// Loads movies from the API service
  /// Fetches movies by movie if search query is provided, otherwise by genre
  Future<void> loadMovies() async {
    isLoading = true;
    notifyListeners();

    try {
      if (searchQuery != null && searchQuery!.isNotEmpty) {
        movies = await apiService.searchTitleMovies(searchQuery!, currPage);
      } else {
        movies = await apiService.searchGenreMovies(
          selectedGenre?.id,
          currPage,
        );
      }
    } catch (e) {
      isError = true;
    } finally {
      isLoading = false;
      notifyListeners();
    }

    isLoading = false;
    notifyListeners();
  }

  /// Updates the search query and loads the appropriate movies
  void updateSearch(String query) {
    searchQuery = query;
    selectedGenre = null;
    currPage = 1;
    loadMovies();
  }

  /// Updates the selected genre and loads the approriate movies
  void updateGenre(Genre? genre) {
    selectedGenre = genre;
    searchQuery = "";
    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 1000), loadMovies);
    currPage = 1;
    loadMovies();
  }

  /// Goes to a specific page on the frontend
  /// Currently not being in use
  void goToPage(int page) {
    currPage = page;
    loadMovies();
  }

  /// Disposal function
  @override
  void dispose() {
    _debounce?.cancel();
    super.dispose();
  }
}
