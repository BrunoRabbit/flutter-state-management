import 'package:flutter/material.dart';
import 'package:flutter_state_management/utils/routes/route.dart';

enum ScreensNames {
  changeNotifier,
  valueNotifier,
  provider,
  getx,
  mobx,
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Selecione a troca de estado que preferir'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {},
              child: const Text('BloC'),
            ),
            ElevatedButton(
              child: const Text('MobX'),
              onPressed: () {
                Routes.navigateTo(
                  context,
                  ScreensNames.mobx.name,
                );
              },
            ),
            ElevatedButton(
              child: const Text('GetX'),
              onPressed: () {
                Routes.navigateTo(
                  context,
                  ScreensNames.getx.name,
                );
              },
            ),
            ElevatedButton(
              child: const Text('Provider'),
              onPressed: () {
                Routes.navigateTo(
                  context,
                  ScreensNames.provider.name,
                );
              },
            ),
            ElevatedButton(
              child: const Text('Change notifier'),
              onPressed: () {
                Routes.navigateTo(
                  context,
                  ScreensNames.changeNotifier.name,
                );
              },
            ),
            ElevatedButton(
              child: const Text('Value notifier'),
              onPressed: () {
                Routes.navigateTo(
                  context,
                  ScreensNames.valueNotifier.name,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
