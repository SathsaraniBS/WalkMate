import 'package:flutter/material.dart';
import '../widgets/common/custom_card.dart';
import '../widgets/common/custom_text.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: ListView(
        children: [
          CustomCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const H2('Device Status'),
                const SizedBox(height: 16),
                const Paragraph('Connected'),
                const Paragraph('Battery: 85%'),
                const Paragraph('Last Update: Just now'),
              ],
            ),
          ),
          // Add more cards for recent activity, etc.
        ],
      ),
    );
  }
}