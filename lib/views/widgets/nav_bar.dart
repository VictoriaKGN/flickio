import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  final List<String> pages;
  final int selected;
  final Function(int) onTabSelect;

  const NavBar({
    super.key,
    required this.pages,
    required this.selected,
    required this.onTabSelect,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final bool isMobile = screenWidth < 600;

    final double fontSize = isMobile ? 14 : 16;
    final double itemWidth = isMobile ? 85 : 100;
    final double maxWidth = isMobile ? double.infinity : 480;

    return Positioned(
      top: isMobile ? null : 40,
      bottom: isMobile ? 20 : null,
      left: 0,
      right: 0,
      child: Center(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: isMobile ? 20 : 0),
          constraints: BoxConstraints(maxWidth: maxWidth),
          padding: EdgeInsets.symmetric(
            horizontal: isMobile ? 0 : 25,
            vertical: 15,
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
            children: List.generate(pages.length, (index) {
              final isSelected = selected == index;
              return GestureDetector(
                onTap: () => onTabSelect(index),
                child: AnimatedContainer(
                  duration: Duration(microseconds: 250),
                  width: itemWidth,
                  child: Text(
                    pages[index].toUpperCase(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color:
                          isSelected
                              ? Theme.of(context).colorScheme.tertiary
                              : Theme.of(
                                context,
                              ).colorScheme.onPrimary.withAlpha(153),
                      fontSize: fontSize,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
