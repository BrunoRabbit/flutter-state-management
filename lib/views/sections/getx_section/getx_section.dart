import 'package:flutter/material.dart';
import 'package:flutter_state_management/view_models/getx_view_model/getx_view_model.dart';
import 'package:flutter_state_management/views/base_screen.dart';
import 'package:get/get.dart';

class GetxSection extends GetView<GetxViewModel> {
  const GetxSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final init = Get.put(GetxViewModel());
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX'),
      ),
      body: GetBuilder<GetxViewModel>(
          init: init,
          id: 'BaseScreen',
          builder: (controller) {
            return BaseScreen(
              increment: () {
                controller.increment();
                _updateBaseScreen(controller);
              },
              decrement: () {
                controller.decrement();
                _updateBaseScreen(controller);
              },
              reset: () {
                controller.reset();
                _updateBaseScreen(controller);
              },
              value: controller.counterModel.value.value.toString(),
            );
          }),
    );
  }

  void _updateBaseScreen(GetxViewModel controller) {
    Get.find<GetxViewModel>().update(['BaseScreen']);
  }
}
