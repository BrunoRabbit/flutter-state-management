import 'package:flutter/material.dart';
import 'package:flutter_state_management/utils/routes/route.dart';
import 'package:flutter_state_management/views/home/home_view.dart';
import 'state_management_types.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StateManagementTypes(
      materialChild: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: Routes.appMap,
        home: const HomeScreen(),
      ),
    );
  }
}