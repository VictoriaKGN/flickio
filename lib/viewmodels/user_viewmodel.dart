// Flutter & Dart
import 'dart:convert';
import 'package:flutter/material.dart';

// Services
import '../services/storage_service.dart';

// Models
import '../models/movie.dart';
import '../models/user.dart';

class UserViewModel extends ChangeNotifier {
  final User _user = User();
  final bool isFetching = false;
  final bool isError = false;

  User get user => _user;

  Future<void> loadUserData() async {
    final watchlist = await StorageService().getWatchlist();
    _user.watchlist = watchlist;

    // TODO: add rating stuff

    notifyListeners();
  }

  Future<void> toggleWatchlist(Movie movie) async {
    if (_user.isInWatchlist(movie.id)) {
      await StorageService().removeFromWatchlist(movie);
      _user.watchlist.removeWhere((movie) => movie.id == movie.id);
    } else {
      await StorageService().addToWatchlist(movie);
      _user.watchlist.add(movie);
    }

    notifyListeners();
  }
}
