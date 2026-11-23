import 'dart:ui';
import 'package:devfolio_app/main.dart';
import 'package:devfolio_app/widgets/cracha_perfil.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('exibe os dois crachas e navega sem overflow', (tester) async {
    tester.view.physicalSize = const Size(400, 800);
    tester.view.devicePixelRatio = 1.0;
    addTearDown(tester.view.reset);

    await tester.pumpWidget(const DevFolioApp());
    expect(find.byType(CrachaPerfil), findsNWidgets(2));

    await tester.scrollUntilVisible(
      find.text('Habilidades da Dupla'),
      200,
    );
    expect(find.text('Habilidades da Dupla'), findsOneWidget);

    await tester.tap(find.text('Dashboard'));
    await tester.pumpAndSettle();
    expect(find.text('Métricas'), findsOneWidget);
  });
}
