// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({
    Key? key,
    required this.increment,
    required this.decrement,
    required this.reset,
    required this.value,
  }) : super(key: key);

  final VoidCallback increment;
  final VoidCallback decrement;
  final VoidCallback reset;
  final String value;

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.value,
            style: const TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(26.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [..._buildButtons()],
            ),
          ),
          ElevatedButton.icon(
            onPressed: widget.reset,
            icon: const Icon(
              Icons.restart_alt_rounded,
            ),
            label: const Text('Reset'),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildButtons() {
    return [
      ElevatedButton.icon(
        onPressed: widget.increment,
        icon: const Icon(
          Icons.arrow_upward_rounded,
        ),
        label: const Text('Increment'),
      ),
      const Spacer(),
      ElevatedButton.icon(
        onPressed: widget.decrement,
        icon: const Icon(
          Icons.arrow_downward_rounded,
        ),
        label: const Text('Decrement'),
      )
    ];
  }
}
