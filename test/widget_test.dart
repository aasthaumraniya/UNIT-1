import 'package:flutter_test/flutter_test.dart';

import 'package:app/main.dart';

void main() {
  testWidgets('MainHubApp smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MainHubApp());

    // Verify that our app bar title is displayed.
    expect(find.text('Flutter Practicals (1 to 30)'), findsOneWidget);
  });
}
