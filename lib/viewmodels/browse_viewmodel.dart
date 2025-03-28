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

  void updateSearch(String query) {
    searchQuery = query;
    selectedGenre = null;
    currPage = 1;
    loadMovies();
  }

  void updateGenre(Genre? genre) {
    selectedGenre = genre;
    searchQuery = "";
    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 1000), loadMovies);
    currPage = 1;
    loadMovies();
  }

  void goToPage(int page) {
    currPage = page;
    loadMovies();
  }

  @override
  void dispose() {
    _debounce?.cancel();
    super.dispose();
  }
}
