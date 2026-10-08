import 'package:flutter/material.dart';

import 'f1_stateless_info.dart' as f1;
import 'f2_counter_app.dart' as f2;
import 'f3_scaffold_fab.dart' as f3;
import 'f4_fruit_listview.dart' as f4;
import 'f5_gridview_count.dart' as f5;
import 'f6_image_card.dart' as f6;
import 'f7_drawer_menu.dart' as f7;
import 'f8_bottom_nav.dart' as f8;
import 'f9_stack_label.dart' as f9;
import 'f10_section_title.dart' as f10;
import 'f11_lifecycle_demo.dart' as f11;
import 'f12_responsive_builder.dart' as f12;
import 'f13_product_grid.dart' as f13;
import 'f14_profile_card.dart' as f14;
import 'f15_skill_wrap.dart' as f15;
import 'f16_badge_stack.dart' as f16;
import 'f17_tabbar_view.dart' as f17;
import 'f18_settings_table.dart' as f18;
import 'f19_responsive_form.dart' as f19;
import 'f20_aspect_ratio_card.dart' as f20;
import 'f21_responsive_dashboard.dart' as f21;
import 'f22_widget_library.dart' as f22;
import 'f23_ecommerce_detail.dart' as f23;
import 'f24_todo_didupdate.dart' as f24;
import 'f25_nav_shell.dart' as f25;
import 'f26_multi_tab_profile.dart' as f26;
import 'f27_news_intrinsic.dart' as f27;
import 'f28_profile_header.dart' as f28;
import 'f29_reflow_settings.dart' as f29;
import 'f30_lifecycle_logger.dart' as f30;

void main() {
  runApp(const MainHubApp());
}

class MainHubApp extends StatelessWidget {
  const MainHubApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Practicals (1 - 30)',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const PracticalHubScreen(),
    );
  }
}

class PracticalItem {
  final int number;
  final String title;
  final String section;
  final Widget widget;

  const PracticalItem({
    required this.number,
    required this.title,
    required this.section,
    required this.widget,
  });
}

class PracticalHubScreen extends StatelessWidget {
  const PracticalHubScreen({super.key});

  List<PracticalItem> get _practicals => [
        // Section A (1-10)
        const PracticalItem(number: 1, title: 'Stateless Student Info Column', section: 'Section A - Easy', widget: f1.MyApp()),
        const PracticalItem(number: 2, title: 'Stateful Counter App', section: 'Section A - Easy', widget: f2.CounterApp()),
        const PracticalItem(number: 3, title: 'Scaffold, AppBar & FAB Screen', section: 'Section A - Easy', widget: f3.MyApp()),
        const PracticalItem(number: 4, title: 'Fruits ListView.builder', section: 'Section A - Easy', widget: f4.MyApp()),
        const PracticalItem(number: 5, title: 'GridView.count Colored Boxes', section: 'Section A - Easy', widget: f5.MyApp()),
        const PracticalItem(number: 6, title: 'Card with Image, Title & Desc', section: 'Section A - Easy', widget: f6.MyApp()),
        const PracticalItem(number: 7, title: 'Navigation Drawer Menu', section: 'Section A - Easy', widget: f7.MyApp()),
        const PracticalItem(number: 8, title: 'BottomNavigationBar 3 Tabs', section: 'Section A - Easy', widget: f8.BottomNavApp()),
        const PracticalItem(number: 9, title: 'Stack Widget with Text Overlay', section: 'Section A - Easy', widget: f9.MyApp()),
        const PracticalItem(number: 10, title: 'Custom SectionTitle Reused', section: 'Section A - Easy', widget: f10.MyApp()),

        // Section B (11-20)
        const PracticalItem(number: 11, title: 'Stateful Lifecycle Console Logger', section: 'Section B - Moderate', widget: f11.MyApp()),
        const PracticalItem(number: 12, title: 'LayoutBuilder Column vs Row', section: 'Section B - Moderate', widget: f12.MyApp()),
        const PracticalItem(number: 13, title: 'Product Listing GridView.builder', section: 'Section B - Moderate', widget: f13.MyApp()),
        const PracticalItem(number: 14, title: 'Custom ProfileCard Reused 3x', section: 'Section B - Moderate', widget: f14.MyApp()),
        const PracticalItem(number: 15, title: 'Skill Selector Wrap & FilterChips', section: 'Section B - Moderate', widget: f15.SkillSelectorApp()),
        const PracticalItem(number: 16, title: 'Badge Notification Stack & Positioned', section: 'Section B - Moderate', widget: f16.MyApp()),
        const PracticalItem(number: 17, title: 'TabBar & TabBarView Media Content', section: 'Section B - Moderate', widget: f17.MyApp()),
        const PracticalItem(number: 18, title: 'Settings Screen Table Widget', section: 'Section B - Moderate', widget: f18.MyApp()),
        const PracticalItem(number: 19, title: 'MediaQuery Responsive Form', section: 'Section B - Moderate', widget: f19.MyApp()),
        const PracticalItem(number: 20, title: '16:9 AspectRatio Media Cards', section: 'Section B - Moderate', widget: f20.MyApp()),

        // Section C (21-30)
        const PracticalItem(number: 21, title: 'Responsive 3-Tier Dashboard', section: 'Section C - Hard', widget: f21.MyApp()),
        const PracticalItem(number: 22, title: 'Custom Component Widget Library', section: 'Section C - Hard', widget: f22.MyApp()),
        const PracticalItem(number: 23, title: 'E-Commerce Product Detail Screen', section: 'Section C - Hard', widget: f23.MyApp()),
        const PracticalItem(number: 24, title: 'To-Do List (didUpdateWidget)', section: 'Section C - Hard', widget: f24.TodoParentApp()),
        const PracticalItem(number: 25, title: 'Drawer vs NavRail Navigation Shell', section: 'Section C - Hard', widget: f25.NavShellApp()),
        const PracticalItem(number: 26, title: 'Multi-Tab Profile (Grid & List)', section: 'Section C - Hard', widget: f26.MyApp()),
        const PracticalItem(number: 27, title: 'Card News Feed IntrinsicHeight', section: 'Section C - Hard', widget: f27.MyApp()),
        const PracticalItem(number: 28, title: 'Social Header Stack & Avatar', section: 'Section C - Hard', widget: f28.MyApp()),
        const PracticalItem(number: 29, title: 'Reflowing Grouped Settings Screen', section: 'Section C - Hard', widget: f29.MyApp()),
        const PracticalItem(number: 30, title: 'Widget Lifecycle Logger Utility', section: 'Section C - Hard', widget: f30.MyApp()),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Practicals (1 to 30)'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: _practicals.length,
        itemBuilder: (context, index) {
          final item = _practicals[index];

          Color badgeColor;
          if (item.number <= 10) {
            badgeColor = Colors.green;
          } else if (item.number <= 20) {
            badgeColor = Colors.orange;
          } else {
            badgeColor = Colors.purple;
          }

          return Card(
            elevation: 2,
            margin: const EdgeInsets.symmetric(vertical: 6),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: badgeColor,
                foregroundColor: Colors.white,
                child: Text('${item.number}', style: const TextStyle(fontWeight: FontWeight.bold)),
              ),
              title: Text(item.title, style: const TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text(item.section, style: TextStyle(color: badgeColor, fontWeight: FontWeight.w600)),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => item.widget),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
