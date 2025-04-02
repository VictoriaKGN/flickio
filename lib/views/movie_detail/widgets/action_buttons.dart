// Flutter & Dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// View Model
import '../../../viewmodels/user_viewmodel.dart';

// Models
import '../../../models/movie.dart';

/// Action buttons for movie detail view
/// Currently only the watchlist button works
class ActionButtons extends StatelessWidget {
  final Movie movie;

  const ActionButtons({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    final userVM = Provider.of<UserViewModel>(context);
    final isInWatchlist = userVM.user.isInWatchlist(movie.id);
    final bool isMobile = MediaQuery.of(context).size.width < 600;

    final watchlistBtn = FilledButton.icon(
      onPressed: () {
        userVM.toggleWatchlist(movie);
      },
      icon: Icon(isInWatchlist ? Icons.remove : Icons.add),
      label: Text(
        (isInWatchlist ? "Remove from Watchlist" : "Add to Watchlist")
            .toUpperCase(),
      ),
      style: FilledButton.styleFrom(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: isMobile ? 10 : 18,
        ),
        textStyle: const TextStyle(fontSize: 15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),
    );

    final watchedBtn = FilledButton.icon(
      onPressed: () {},
      icon: const Icon(Icons.check),
      label: Text("Mark as Watched".toUpperCase()),
      style: FilledButton.styleFrom(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: isMobile ? 10 : 18,
        ),
        textStyle: const TextStyle(
          fontSize: 15,
          // fontWeight:
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),
    );

    return Wrap(
      spacing: 30,
      runSpacing: 10,
      children: [
        if (isMobile)
          SizedBox(width: double.infinity, child: watchlistBtn)
        else
          watchlistBtn,

        if (isMobile)
          SizedBox(width: double.infinity, child: watchedBtn)
        else
          watchedBtn,

        // TODO: add rating button
      ],
    );
  }
}
