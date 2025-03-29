// Flutter
import 'package:flutter/material.dart';

// Widgets
import '../widgets/nav_bar.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isMobile = MediaQuery.of(context).size.width < 600;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(maxHeight: 50),
          child: Image.asset(
            'assets/icon/flickio_large.png',
            fit: BoxFit.contain,
          ),
        ),

        if (!isMobile) NavBar(),

        IconButton.filledTonal(
          onPressed: () {},
          icon: const Icon(Icons.person),
          color: Theme.of(context).colorScheme.onSecondary,
        ),
      ],
    );
  }
}
