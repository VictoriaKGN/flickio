// Flutter & Dart
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

// Models
import '../models/movie.dart';

class StorageService {
  static const _watchlistKey = 'watchlist';

  Future<List<Movie>> getWatchlist() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final jsonList = prefs.getStringList(_watchlistKey) ?? [];
      return jsonList.map((json) => Movie.fromJson(jsonDecode(json))).toList();
    } catch (e) {
      throw Exception('Failed to load watchlist');
    }
  }

  Future<void> addToWatchlist(Movie movie) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final current = prefs.getStringList(_watchlistKey) ?? [];
      current.add(jsonEncode(movie.toJson()));
      await prefs.setStringList(_watchlistKey, current);
    } catch (e) {
      throw Exception('Failed to add to watchlist');
    }
  }

  Future<void> removeFromWatchlist(Movie movie) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final current = prefs.getStringList(_watchlistKey) ?? [];
      current.removeWhere(
        (json) => Movie.fromJson(jsonDecode(json)).id == movie.id,
      );
      await prefs.setStringList(_watchlistKey, current);
    } catch (e) {
      throw Exception('Failed to remove from watchlist.');
    }
  }
}
