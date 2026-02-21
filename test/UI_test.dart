import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_cicd_demo/main.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('RevCon App renders title, version', (WidgetTester tester) async {
    const testBuildTime = 'TestTime';
    const testVersion = '1.0.0';

    await tester.pumpWidget(
      const MyApp(buildTime: testBuildTime, version: testVersion),
    );

    await tester.pumpAndSettle();

    expect(find.text('🚀 ResCon\'26'), findsOneWidget);
    expect(find.text('Version: $testVersion'), findsOneWidget);
    expect(find.text('Built at: $testBuildTime'), findsOneWidget);
  });
}
