import 'package:flutter/material.dart';
import 'widgets/nav_bar.dart';

class MainContainer extends StatefulWidget {
  const MainContainer({super.key});

  @override
  State<MainContainer> createState() => _MainContainerState();
}

class _MainContainerState extends State<MainContainer> {
  int _selectedIndex = 0;

  final List<String> _pages = ['Home', 'Browse', 'Watchlist'];

  Widget _buildCurrentPage() {
    switch (_selectedIndex) {
      case 0:
        return Center(child: Text('🏠 Home Page'));
      case 1:
        return Center(child: Text('🔍 Browse Page'));
      case 2:
        return Center(child: Text('📃 Watchlist Page'));
      default:
        return SizedBox.shrink();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(child: _buildCurrentPage()),

          NavBar(
            pages: _pages,
            selected: _selectedIndex,
            onTabSelect: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
        ],
      ),
    );
  }
}
