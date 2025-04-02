/// User movie rating/review Model
class UserMovie {
  final int movieID;
  bool isInWatchlist;
  bool isWatched;
  double? rating;
  String? review;

  UserMovie({
    required this.movieID,
    this.isInWatchlist = false,
    this.isWatched = false,
    this.rating,
    this.review,
  });
}