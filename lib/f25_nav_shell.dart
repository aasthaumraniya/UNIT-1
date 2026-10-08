import 'package:flutter/material.dart';

void main() {
  runApp(const NavShellApp());
}

class NavShellApp extends StatefulWidget {
  const NavShellApp({super.key});

  @override
  State<NavShellApp> createState() => _NavShellAppState();
}

class _NavShellAppState extends State<NavShellApp> {
  int _selectedIndex = 0;

  final List<Widget> _pages = const [
    Center(child: Text('Dashboard Page', style: TextStyle(fontSize: 24))),
    Center(child: Text('Analytics Page', style: TextStyle(fontSize: 24))),
    Center(child: Text('Settings Page', style: TextStyle(fontSize: 24))),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LayoutBuilder(
        builder: (context, constraints) {
          bool isDesktop = constraints.maxWidth >= 700;

          if (isDesktop) {
            // Desktop View with NavigationRail
            return Scaffold(
              body: Row(
                children: [
                  NavigationRail(
                    selectedIndex: _selectedIndex,
                    onDestinationSelected: (idx) {
                      setState(() {
                        _selectedIndex = idx;
                      });
                    },
                    labelType: NavigationRailLabelType.all,
                    destinations: const [
                      NavigationRailDestination(icon: Icon(Icons.dashboard), label: Text('Dashboard')),
                      NavigationRailDestination(icon: Icon(Icons.analytics), label: Text('Analytics')),
                      NavigationRailDestination(icon: Icon(Icons.settings), label: Text('Settings')),
                    ],
                  ),
                  const VerticalDivider(thickness: 1, width: 1),
                  Expanded(child: _pages[_selectedIndex]),
                ],
              ),
            );
          } else {
            // Mobile View with Drawer
            return Scaffold(
              appBar: AppBar(title: const Text('Mobile Navigation Shell')),
              drawer: Drawer(
                child: ListView(
                  children: [
                    const DrawerHeader(
                      decoration: BoxDecoration(color: Colors.indigo),
                      child: Text('Navigation Menu', style: TextStyle(color: Colors.white, fontSize: 20)),
                    ),
                    ListTile(
                      leading: const Icon(Icons.dashboard),
                      title: const Text('Dashboard'),
                      selected: _selectedIndex == 0,
                      onTap: () {
                        setState(() => _selectedIndex = 0);
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.analytics),
                      title: const Text('Analytics'),
                      selected: _selectedIndex == 1,
                      onTap: () {
                        setState(() => _selectedIndex = 1);
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.settings),
                      title: const Text('Settings'),
                      selected: _selectedIndex == 2,
                      onTap: () {
                        setState(() => _selectedIndex = 2);
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
              body: _pages[_selectedIndex],
            );
          }
        },
      ),
    );
  }
}
