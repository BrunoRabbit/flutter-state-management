import 'package:flutter/material.dart';
import 'package:flutter_state_management/utils/routes/route.dart';
import 'package:flutter_state_management/views/home/home_view.dart';
import 'package:flutter_state_management/views/sections/bloc_section/bloc_section.dart';
import 'package:flutter_state_management/views/sections/change_notifier_section/change_notifier_section.dart';
import 'package:flutter_state_management/views/sections/getx_section/getx_section.dart';
import 'package:flutter_state_management/views/sections/mobx_section/mobx_section.dart';
import 'package:flutter_state_management/views/sections/provider_section/provider_section.dart';
import 'package:flutter_state_management/views/sections/value_notifier_section/value_notifier_section.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  List<Type> listScreen = [
    ChangeNotifierSection,
    ValueNotifierSection,
    ProviderSection,
    GetxSection,
    MobxSection,
    BlocSection,
  ];

  group('Routes', () {
    test('should verify if appMap is create correctly', () {
      final appMap = Routes.appMap;

      expect(appMap.length, equals(6));
      expect(appMap['/changeNotifier'], isNotNull);
      expect(appMap['/valueNotifier'], isNotNull);
      expect(appMap['/provider'], isNotNull);
      expect(appMap['/getx'], isNotNull);
      expect(appMap['/mobx'], isNotNull);
      expect(appMap['/bloc'], isNotNull);
    });

    void tapButtonAndVerifyScreen(
        WidgetTester tester, String buttonText, Type expectedScreen) async {
      await tester.tap(find.text(buttonText));
      await tester.pumpAndSettle();

      expect(find.byType(expectedScreen), findsOneWidget);
    }

    testWidgets('test app routes', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: Column(
            children: [
              for (int i = 0; i < ScreensNames.values.length; i++)
                ElevatedButton(
                  child: Text(ScreensNames.values[i].name),
                  onPressed: () {
                    tapButtonAndVerifyScreen(
                        tester, ScreensNames.values[i].name, listScreen[i]);
                  },
                ),
            ],
          ),
        ),
      ));
    });
  });
}