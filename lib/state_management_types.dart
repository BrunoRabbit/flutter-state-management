import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_state_management/view_models/provider_view_model/provider_view_model.dart';
import 'package:flutter_state_management/views/bloc/counter_bloc.dart';
import 'package:provider/provider.dart';

// * I made this screen just for organization, if I have many state managers it will be better to read, although you shouldn't use several state managers.
// * With the use of many state managers, you may encounter some problems during use, such as complexity, performance problems, headaches, conflicts and debugging problems.
// * It's best to use state managers sparingly and try to keep the code as simple and uncluttered as possible.
class StateManagementTypes extends StatefulWidget {
  final Widget materialChild;

  const StateManagementTypes({
    Key? key,
    required this.materialChild,
  }) : super(key: key);

  @override
  State<StateManagementTypes> createState() => _StateManagementTypesState();
}

class _StateManagementTypesState extends State<StateManagementTypes> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(),
      child: ChangeNotifierProvider(
        create: (context) => ProviderViewModel.instancialize(),
        child: widget.materialChild,
      ),
    );
  }
}
