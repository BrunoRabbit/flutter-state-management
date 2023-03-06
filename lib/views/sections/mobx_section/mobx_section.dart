// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_state_management/view_models/mobx_view_model/mobx_view_model.dart';

import 'package:flutter_state_management/views/base_screen.dart';

MobxViewModel viewModel = MobxViewModel();

class MobxSection extends StatelessWidget {
  const MobxSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mobx'),
      ),
      body: Observer(
        builder: (context) {
          return BaseScreen(
            increment: () {
              viewModel.increment();
            },
            decrement: () {
              viewModel.decrement();
            },
            reset: () {
              viewModel.reset();
            },
            value: "${viewModel.model.value}",
          );
        },
      ),
    );
  }
}
