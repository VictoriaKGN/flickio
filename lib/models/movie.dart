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

  factory Movie.fromJson(Map<String, dynamic> json) => Movie(
    id: json['id'],
    title: json['title'],
    posterPath: json['posterPath'],
    backdropPath: json['backdropPath']
  );
}