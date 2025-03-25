class Movie {
  final int id;
  final String title;
  final String posterPath;
  final String backdropPath;
  final String overview;
  // TODO: add more

  Movie({
    required this.id,
    required this.title,
    required this.posterPath,
    required this.backdropPath,
    required this.overview,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      id: json['id'],
      title: json['title'] ?? '',
      posterPath: json['poster_path'] ?? '',
      backdropPath: json['backdrop_path'] ?? '',
      overview: json["overview"] ?? '',
    );
  }

  String get fullCardPosterUrl => "https://image.tmdb.org/t/p/w342$posterPath";
  String get fullDetailPosterUrl =>
      "https://image.tmdb.org/t/p/w500$posterPath";
  String get fullBannerPosterUrl =>
      "https://image.tmdb.org/t/p/original$posterPath";
}
