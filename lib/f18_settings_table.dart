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
        appBar: AppBar(title: const Text('Settings Table Screen')),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAlignment: CrossAlignment.start,
            children: [
              const Text('Device & App Details', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              Table(
                border: TableBorder.all(color: Colors.grey.shade300, width: 1),
                columnWidths: const {
                  0: FlexColumnWidth(2),
                  1: FlexColumnWidth(3),
                },
                children: const [
                  TableRow(
                    decoration: BoxDecoration(color: Colors.black12),
                    children: [
                      Padding(padding: EdgeInsets.all(10.0), child: Text('Setting Label', style: TextStyle(fontWeight: FontWeight.bold))),
                      Padding(padding: EdgeInsets.all(10.0), child: Text('Current Value', style: TextStyle(fontWeight: FontWeight.bold))),
                    ],
                  ),
                  TableRow(
                    children: [
                      Padding(padding: EdgeInsets.all(10.0), child: Text('App Version')),
                      Padding(padding: EdgeInsets.all(10.0), child: Text('v2.4.0 (Build 108)')),
                    ],
                  ),
                  TableRow(
                    children: [
                      Padding(padding: EdgeInsets.all(10.0), child: Text('Theme Mode')),
                      Padding(padding: EdgeInsets.all(10.0), child: Text('System Default')),
                    ],
                  ),
                  TableRow(
                    children: [
                      Padding(padding: EdgeInsets.all(10.0), child: Text('Language')),
                      Padding(padding: EdgeInsets.all(10.0), child: Text('English (US)')),
                    ],
                  ),
                  TableRow(
                    children: [
                      Padding(padding: EdgeInsets.all(10.0), child: Text('Sync Frequency')),
                      Padding(padding: EdgeInsets.all(10.0), child: Text('Every 15 Minutes')),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
