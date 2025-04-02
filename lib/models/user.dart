// Models
import 'movie.dart';

// User Model
class User {
  List<Movie> watchlist = [];
  // TODO: add rating list

  bool isInWatchlist(int movieID) => watchlist.any((movie) => movie.id == movieID);

  // TODO: rating related stuff
}