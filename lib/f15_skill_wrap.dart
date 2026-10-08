import 'package:flutter/material.dart';

void main() {
  runApp(const SkillSelectorApp());
}

class SkillSelectorApp extends StatefulWidget {
  const SkillSelectorApp({super.key});

  @override
  State<SkillSelectorApp> createState() => _SkillSelectorAppState();
}

class _SkillSelectorAppState extends State<SkillSelectorApp> {
  final Map<String, bool> skills = {
    'Flutter': true,
    'Dart': true,
    'Kotlin': false,
    'Swift': false,
    'Firebase': true,
    'GraphQL': false,
    'REST API': true,
    'Git': true,
    'CI/CD': false,
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Skill Selector (Wrap Widget)')),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAlignment: CrossAlignment.start,
            children: [
              const Text('Select Your Skills:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                children: skills.keys.map((skill) {
                  final isSelected = skills[skill]!;
                  return FilterChip(
                    label: Text(skill),
                    selected: isSelected,
                    selectedColor: Colors.indigo.shade100,
                    checkmarkColor: Colors.indigo,
                    onSelected: (selected) {
                      setState(() {
                        skills[skill] = selected;
                      });
                    },
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
