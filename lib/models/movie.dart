class Movie {
  final int id;
  final String title;
  final String posterPath;
  final String backdropPath;
  final String overview;
  final String releaseDate;
  final double ratingAverage;
  final int ratingCount;
  // TODO: add more

  Movie({
    required this.id,
    required this.title,
    required this.posterPath,
    required this.backdropPath,
    required this.overview,
    required this.releaseDate,
    required this.ratingAverage,
    required this.ratingCount,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      id: json['id'],
      title: json['title'] ?? 'No title available.',
      posterPath: json['poster_path'] ?? '',
      backdropPath: json['backdrop_path'] ?? '',
      overview: json["overview"] ?? 'No overview available.',
      releaseDate: json["release_date"] ?? "N/A",
      ratingAverage: json["vote_average"] ?? 0,
      ratingCount: json["vote_count"] ?? 0,
    );
  }

  String get fullCardPosterUrl => "https://image.tmdb.org/t/p/w342$posterPath";
  String get fullDetailPosterUrl =>
      "https://image.tmdb.org/t/p/w500$posterPath";
  String get fullBannerPosterUrl =>
      "https://image.tmdb.org/t/p/original$posterPath";
}
