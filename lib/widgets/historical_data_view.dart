import 'package:flutter/material.dart';
import 'package:smartcane_app/widgets/common/custom_card.dart';

class HistoricalDataView extends StatelessWidget {
  final List<Map<String, dynamic>>? data;

  const HistoricalDataView({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    final items = data ?? [];

    if (items.isEmpty) {
      return const Center(child: Text('No data available'));
    }

    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return CustomCard(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Time: ${item['timestamp'] ?? 'Unknown'}', style: const TextStyle(fontWeight: FontWeight.bold)),
              Text('Battery: ${item['battery'] ?? 'N/A'}%'),
              Text('Steps: ${item['steps'] ?? 0}'),
              Text('Fall: ${item['status']?['fall'] ?? 'Not detected'}'),
            ],
          ),
        );
      },
    );
  }
}