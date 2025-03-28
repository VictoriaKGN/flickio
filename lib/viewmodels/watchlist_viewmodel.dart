// Flutter
import 'package:flutter/material.dart';

// Models
import '../models/genre.dart';
import '../models/movie.dart';

// Stubs
import 'package:flickio/data/stubs/trending.dart';

// View Model
import 'user_viewmodel.dart';

class WatchlistViewmodel extends ChangeNotifier {
  final UserViewModel userVM;

  String searchQuery = "";
  Genre? selectedGenre;
  int currPage = 1;

  WatchlistViewmodel(this.userVM);

  List<Movie> get filteredWatchlist {
    final saved = userVM.user.watchlist;

    return saved.where((movie) {
      final matchesSearch = searchQuery.isEmpty || movie.title.toLowerCase().contains(searchQuery.toLowerCase());
      final matchesGenre = selectedGenre == null || movie.genres.any((genre) => genre.id == selectedGenre!.id);

      return matchesSearch && matchesGenre;
    }).toList();
  }

  void updateSearch(String text) {
    searchQuery = text;
    notifyListeners();
  }

  void updateGenre(Genre? genre) {
    selectedGenre = genre;
    notifyListeners();
  }

  // void goToPage(int page) {
  //   currPage = page;
  //   loadMovies();
  // }
}