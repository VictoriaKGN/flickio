// Flutter & Dart
import 'dart:convert';
import 'package:flutter/material.dart';

// Services
import '../services/storage_service.dart';

// Models
import '../models/movie.dart';
import '../models/user.dart';

/// View model for the user
/// Being used as a global VM to access the User object
class UserViewModel extends ChangeNotifier {
  final User _user = User();
  final bool isFetching = false;
  final bool isError = false;

  User get user => _user;

  /// Loads the user's watchlist and reviews
  /// Currently not being in use
  Future<void> loadUserData() async {
    final watchlist = await StorageService().getWatchlist();
    _user.watchlist = watchlist;

    // TODO: add rating stuff

    notifyListeners();
  }

  /// Toggles whether the movie needs to be added or removed from the saved watchlist
  Future<void> toggleWatchlist(Movie movie) async {
    if (_user.isInWatchlist(movie.id)) {
      await StorageService().removeFromWatchlist(movie);
      _user.watchlist.removeWhere((m) => movie.id == m.id);
    } else {
      await StorageService().addToWatchlist(movie);
      _user.watchlist.add(movie);
    }

    notifyListeners();
  }
}
