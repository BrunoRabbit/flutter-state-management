import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_state_management/view_models/provider_view_model/provider_view_model.dart';
import 'package:flutter_state_management/views/base_screen.dart';

class ProviderSection extends StatefulWidget {
  const ProviderSection({
    Key? key,
    required this.viewModel,
  }) : super(key: key);

  final ProviderViewModel viewModel;

  @override
  State<ProviderSection> createState() => _ProviderSectionState();
}

class _ProviderSectionState extends State<ProviderSection> {
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<ProviderViewModel>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider'),
      ),
      body: BaseScreen(
        increment: () => controller.increment(),
        decrement: () => controller.decrement(),
        reset: () => controller.reset(),
        value: context.watch<ProviderViewModel>().model.value.toString(),
      ),
    );
  }
}
