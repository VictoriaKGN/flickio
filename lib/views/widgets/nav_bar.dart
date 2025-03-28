// Flutter & Dart
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final bool isMobile = screenWidth < 600;

    final double maxWidth = isMobile ? double.infinity : 480;

    return Center(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: isMobile ? 20 : 0),
        constraints: BoxConstraints(maxWidth: maxWidth),
        padding: EdgeInsets.symmetric(
          horizontal: isMobile ? 0 : 25,
          vertical: 10,
        ),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary.withAlpha(51),
          borderRadius: BorderRadius.circular(40),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 8,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildTab("Home", '/', context, isMobile),
            _buildTab("Browse", '/browse', context, isMobile),
            _buildTab("Watchlist", '/watchlist', context, isMobile),
          ],
        ),
      ),
    );
  }

  Widget _buildTab(
    String label,
    String route,
    BuildContext context,
    bool isMobile,
  ) {
    final location = GoRouterState.of(context).uri.toString();

    final double fontSize = isMobile ? 14 : 16;
    // final double itemWidth = 125;

    return SizedBox(
      width: 125,
      child: TextButton(
        onPressed: () {
          context.go(route);
        },
        child: Text(
          label.toUpperCase(),
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.w200,
            color:
                location == route
                    ? Theme.of(context).colorScheme.tertiary
                    : Theme.of(context).colorScheme.onPrimary.withAlpha(153),
          ),
        ),
      ),
    );
  }
}
