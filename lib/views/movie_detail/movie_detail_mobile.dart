// Flutter
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// Models
import '../../models/movie.dart';

// Widgets
import 'widgets/movie_header.dart';

// Controllers
import '../../controllers/bottom_sheet_controller.dart';

class MovieDetailMobile extends StatefulWidget {
  final Movie movie;

  const MovieDetailMobile({super.key, required this.movie});

  @override
  State<StatefulWidget> createState() => _MovieDetailMobileState();
}

class _MovieDetailMobileState extends State<MovieDetailMobile> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      bottomSheetController.show(widget.movie);
    });
  }

  @override
  void dispose() {
    bottomSheetController.hide();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
          widget.movie.fullDetailPosterUrl,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Positioned(
          top: 50,
          left: 15,
          child: IconButton.filledTonal(
            onPressed: () {
              // TODO: fix this
              context.pop();
            },
            icon: const Icon(Icons.arrow_back),
            color: Theme.of(context).colorScheme.onSecondary,
          ),
        ),
      ],
    );
  }
}
