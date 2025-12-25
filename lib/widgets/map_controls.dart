import 'package:flutter/material.dart';
import '../../core/constants.dart';

class MapControls extends StatelessWidget {
  final VoidCallback onTogglePath;
  final VoidCallback onCompareLocation;
  final bool showPath;
  final bool showUserLocation;

  const MapControls({
    super.key,
    required this.onTogglePath,
    required this.onCompareLocation,
    this.showPath = false,
    this.showUserLocation = false,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 30,
      left: 20,
      right: 20,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            heroTag: 'path',
            backgroundColor: showPath ? AppColors.primary : Colors.grey,
            onPressed: onTogglePath,
            child: const Icon(Icons.route),
          ),
          const SizedBox(width: 16),
          FloatingActionButton(
            heroTag: 'compare',
            backgroundColor: showUserLocation ? AppColors.secondary : Colors.grey,
            onPressed: onCompareLocation,
            child: const Icon(Icons.compare_arrows),
          ),
        ],
      ),
    );
  }
}