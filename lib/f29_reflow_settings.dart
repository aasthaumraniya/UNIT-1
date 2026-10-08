import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Reflowing Settings Screen')),
        body: LayoutBuilder(
          builder: (context, constraints) {
            bool isWide = constraints.maxWidth > 700;

            Widget sectionA = _buildSettingsGroup('Account Settings', [
              _buildSettingRow('Profile Info', 'Rahul Sharma'),
              _buildSettingRow('Email Address', 'rahul@example.com'),
            ]);

            Widget sectionB = _buildSettingsGroup('Privacy & Security', [
              _buildSettingRow('Two-Factor Auth', 'Enabled'),
              _buildSettingRow('Session Timeout', '30 Mins'),
            ]);

            if (isWide) {
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  crossAlignment: CrossAlignment.start,
                  children: [
                    Expanded(child: sectionA),
                    const SizedBox(width: 16),
                    Expanded(child: sectionB),
                  ],
                ),
              );
            } else {
              return SingleChildScrollView(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    sectionA,
                    const SizedBox(height: 16),
                    sectionB,
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }

  Widget _buildSettingsGroup(String title, List<TableRow> rows) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAlignment: CrossAlignment.start,
          children: [
            Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.indigo)),
            const Divider(),
            Table(
              columnWidths: const {0: FlexColumnWidth(1), 1: FlexColumnWidth(1)},
              children: rows,
            ),
          ],
        ),
      ),
    );
  }

  TableRow _buildSettingRow(String label, String value) {
    return TableRow(
      children: [
        Padding(padding: const EdgeInsets.symmetric(vertical: 8.0), child: Text(label)),
        Padding(padding: const EdgeInsets.symmetric(vertical: 8.0), child: Text(value, style: const TextStyle(color: Colors.grey))),
      ],
    );
  }
}
