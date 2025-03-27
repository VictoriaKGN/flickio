// Flutter & Dart
import 'package:flutter/material.dart';

// Views
import 'views/widgets/nav_bar.dart';

class MainContainer extends StatelessWidget {
  final Widget child;

  const MainContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 600;

    return Scaffold(
      body: SafeArea(
        child:
            isMobile
                ? Column(
                  children: [
                    // page content
                    Expanded(child: child),

                    // bottom nav bar
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: NavBar(),
                    ),
                  ],
                )
                : Column(
                  children: [
                    // top nav bar
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: NavBar(),
                    ),

                    // page content
                    Expanded(child: child),
                  ],
                ),
      ),
    );
  }
}
