import 'package:flutter/material.dart';
import 'package:flutter_state_management/view_models/provider_view_model/provider_view_model.dart';
import 'package:flutter_state_management/views/sections/bloc_section/bloc_section.dart';
import 'package:flutter_state_management/views/sections/change_notifier_section/change_notifier_section.dart';
import 'package:flutter_state_management/views/sections/getx_section/getx_section.dart';
import 'package:flutter_state_management/views/sections/mobx_section/mobx_section.dart';
import 'package:flutter_state_management/views/sections/provider_section/provider_section.dart';
import 'package:flutter_state_management/views/sections/value_notifier_section/value_notifier_section.dart';

part 'screens_routes.dart';

class Routes {
  static Map<String, Widget Function(BuildContext)> get appMap {
    return {
      ScreensRoutes.changeNotifier: (context) => const ChangeNotifierSection(),
      ScreensRoutes.valueNotifier: (context) => const ValueNotifierSection(),
      ScreensRoutes.provider: (context) =>
          ProviderSection(viewModel: ProviderViewModel.instancialize()),
      ScreensRoutes.getx: (context) => const GetxSection(),
      ScreensRoutes.mobx: (context) => const MobxSection(),
      ScreensRoutes.bloc: (context) => const BlocSection(),
    };
  }

  static void navigateTo(BuildContext context, String routeName) {
    final Widget Function(BuildContext p1)? builder = appMap['/$routeName'];

    if (builder != null) {
      Navigator.push(
          context,
          PageRouteBuilder(
            pageBuilder: (context, animation, secondAnimation) =>
                builder(context),
            transitionsBuilder: (_, animation, __, child) {
              return SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(1, 0),
                  end: Offset.zero,
                ).animate(animation),
                child: child,
              );
            },
          ));
    }
  }
}
