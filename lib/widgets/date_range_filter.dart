import 'package:flutter/material.dart';
import 'package:smartcane_app/widgets/common/custom_button.dart';

typedef OnDataFetched = void Function(DateTime start, DateTime end);

class DateRangeFilter extends StatefulWidget {
  final OnDataFetched onDataFetched;

  const DateRangeFilter({super.key, required this.onDataFetched});

  @override
  State<DateRangeFilter> createState() => _DateRangeFilterState();
}

class _DateRangeFilterState extends State<DateRangeFilter> {
  DateTime startDate = DateTime.now().subtract(const Duration(days: 7));
  DateTime endDate = DateTime.now();
  bool loading = false;

  Future<void> _selectDate(bool isStart) async {
    final picked = await showDatePicker(
      context: context,
      initialDate: isStart ? startDate : endDate,
      firstDate: DateTime(2020),
      lastDate: DateTime.now(),
    );
    if (picked != null) {
      setState(() {
        if (isStart) startDate = picked;
        else endDate = picked;
      });
    }
  }

  void _apply() {
    setState(() => loading = true);
    widget.onDataFetched(startDate, endDate);
    setState(() => loading = false);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Date Range Filter', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Start Date'),
                      PrimaryButton(
                        label: startDate.toString().split(' ')[0],
                        onPressed: () => _selectDate(true),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('End Date'),
                      PrimaryButton(
                        label: endDate.toString().split(' ')[0],
                        onPressed: () => _selectDate(false),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Center(
              child: PrimaryButton(
                label: loading ? 'Loading...' : 'Apply Filter',
                onPressed: loading ? null : _apply,
              ),
            ),
          ],
        ),
      ),
    );
  }
}