// Models
import 'movie.dart';

class User {
  List<Movie> watchlist = [];
  // TODO: add rating list

  bool isInWatchlist(int movieID) => watchlist.any((movie) => movie.id == movieID);

  // TODO: rating related stuff
}