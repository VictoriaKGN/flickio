// Flutter & DArt
import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

// Models
import '../models/movie.dart';

class MovieApiService {
  static const String _baseUrl = 'https://api.themoviedb.org/3';
  static final String _apiKey = dotenv.env['API_KEY'] ?? "";

  Future<List<Movie>> fetchMovies(
    String endpoint, {
    Map<String, String>? params,
  }) async {
    final url = Uri.parse(
      '$_baseUrl/$endpoint',
    ).replace(queryParameters: {...?params});

    final response = await http.get(
      url,
      headers: {
        'Authorization': 'Bearer $_apiKey',
        'Accept': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final List<dynamic> results = data['results'];
      return results.map((json) => Movie.fromJson(json)).toList();
    } else {
      throw Exception('Failed to fetch movies from endpoint $endpoint');
    }
  }

  Future<List<Movie>> getTrending() => fetchMovies('/trending/movie/day');
  Future<List<Movie>> getNowPlaying() => fetchMovies('/movie/now_playing');
  Future<List<Movie>> getPopular() => fetchMovies('/movie/popular');
  Future<List<Movie>> getTopRated() => fetchMovies('/movie/top_rated');
  Future<List<Movie>> getUpcoming() => fetchMovies('/movie/upcoming');
  Future<List<Movie>> searchMovies(int? genreID, String? keywords) {
    return fetchMovies(
      '/discover/movie',
      params: {
        'with_genres': genreID.toString(),
        'with_keywords': keywords ?? "",
      },
    );
  }
}
