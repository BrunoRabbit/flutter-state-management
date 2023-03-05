import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_state_management/view_models/getx_view_model/getx_view_model.dart';
import 'package:flutter_state_management/views/base_screen.dart';
import 'package:get/get.dart';

class GetxSection extends GetView<GetxViewModel> {
  const GetxSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX'),
      ),
      body: BaseScreen(
        increment: () {
          controller.increment();
        },
        decrement: () {
          controller.decrement();
        },
        reset: () {
          controller.reset();
        },
        value: controller.counterModel.value.toString(),
      ),
    );
  }
  
}