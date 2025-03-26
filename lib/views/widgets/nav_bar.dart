// Flutter & Dart
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavBar extends StatelessWidget {
  final int selectedIndex;

  const NavBar({super.key, required this.selectedIndex});

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
            _buildTab("Home", 0, context, isMobile),
            _buildTab("Browse", 1, context, isMobile),
            _buildTab("Watchlist", 2, context, isMobile),
          ],
        ),
      ),
    );
  }

  Widget _buildTab(
    String label,
    int index,
    BuildContext context,
    bool isMobile,
  ) {
    final isSelected = index == selectedIndex;

    final double fontSize = isMobile ? 14 : 16;
    final double itemWidth = isMobile ? 85 : 100;

    return ButtonTheme(
      minWidth: itemWidth,
      child: TextButton(
        onPressed: () {
          switch (index) {
            case 0:
              context.go("/");
              break;
            case 1:
              context.go("/browse");
              break;
            case 2:
              context.go("/watchlist");
              break;
          }
        },
        child: Text(
          label,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.w200,
            color:
                isSelected
                    ? Theme.of(context).colorScheme.tertiary
                    : Theme.of(context).colorScheme.onPrimary.withAlpha(153),
          ),
        ),
      ),
    );
  }
}
