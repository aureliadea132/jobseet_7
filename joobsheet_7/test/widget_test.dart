import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:joobsheet_7/main.dart';


void main() {
  testWidgets('TeksUtama widget test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
      MaterialApp(
        title: 'Halo Dunia',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Halo Dunia'),
          ),
          body: Center(
            child: TeksUtama(),
          ),
         
        ),
      ),
    );

    // Verify that the initial text is 'Budi'.
    expect(find.text('Budi'), findsOneWidget);

    // Tap the floating action button and trigger a frame.
    await tester.tap(find.byIcon(Icons.refresh));
    await tester.pump();

    // Verify that the text has changed.
    expect(find.text('Andi'), findsOneWidget);

    // Verify that the shadow container is present.
    final container = find.byType(Container).evaluate().elementAt(1).widget as Container;
    final decoration = container.decoration as BoxDecoration;
    expect(decoration.color, Colors.grey);
  });
}
