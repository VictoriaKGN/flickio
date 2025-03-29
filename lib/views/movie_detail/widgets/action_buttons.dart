// Flutter & Dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// View Model
import '../../../viewmodels/user_viewmodel.dart';

// Models
import '../../../models/movie.dart';

class ActionButtons extends StatelessWidget {
  final Movie movie;
  // TODO: add some vars here for buttons logic

  const ActionButtons({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    final userVM = Provider.of<UserViewModel>(context);
    final isInWatchlist = userVM.user.isInWatchlist(movie.id);
    final bool isMobile = MediaQuery.of(context).size.width < 600;

    final double buttonWidth = isMobile ? double.infinity : 250;

    return Wrap(
      spacing: 30,
      runSpacing: 10,
      children: [
        // watchlist button
        SizedBox(
          width: buttonWidth,
          child: FilledButton.icon(
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
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
        ),

        // watched button
        SizedBox(
          width: buttonWidth,
          child: FilledButton.icon(
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
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
        ),

        // TODO: add rating button
      ],
    );
  }
}
