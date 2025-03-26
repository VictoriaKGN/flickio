// Flutter
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// View Models
import '../viewmodels/browse_viewmodel.dart';

// Widgets
import 'widgets/nav_bar.dart';
import 'widgets/movie_card.dart';

class BrowseView extends StatelessWidget {
  const BrowseView({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<BrowseViewmodel>(context);
    final isMobile =  MediaQuery.of(context).size.width < 600;

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           // if NOT mobile
          if (!isMobile)
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: NavBar(selectedIndex: 1),
            ),

          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: isMobile ? 6 : 3,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16
              ),
              itemCount: vm.movies.length,
              itemBuilder: (context, index) {
                final movie = vm.movies[index];
                return MovieCard(movie: movie);
              },
            ),
          ),

          // if mobile
          if (isMobile)
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: NavBar(selectedIndex: 1),
            ),
        ],
      ),
    );
  }
}