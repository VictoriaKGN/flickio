// Flutter
import 'package:flutter/material.dart';

class ActionButtons extends StatelessWidget {
  // TODO: add some vars here for buttons logic

  const ActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 30,
      runSpacing: 10,
      children: [
        // watchlist button
        FilledButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.add),
          label: Text("Add to Watchlist".toUpperCase()),
          style: FilledButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
            textStyle: const TextStyle(
              fontSize: 15,
              // fontWeight:
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        ),

        // watched button
        FilledButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.check),
          label: Text("Mark as Watched".toUpperCase()),
          style: FilledButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
            textStyle: const TextStyle(
              fontSize: 15,
              // fontWeight:
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        ),

        // TODO: add rating button
      ],
    );
  }
}
