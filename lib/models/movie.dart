class Movie {
  final int id;
  final String title;
  final String posterPath;
  final String backdropPath;
  // TODO: add more

  Movie({
    required this.id,
    required this.title,
    required this.posterPath,
    required this.backdropPath,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      id: json['id'],
      title: json['title'] ?? '',
      posterPath: json['poster_path'] ?? "",
      backdropPath: json['backdrop_path'] ?? "",
    );
  }

  String get fullPosterUrl => "https://image.tmdb.org/t/p/original$posterPath";
}
