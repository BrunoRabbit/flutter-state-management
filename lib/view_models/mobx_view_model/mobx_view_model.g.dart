// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mobx_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MobxViewModel on _MobxViewModel, Store {
  late final _$modelAtom = Atom(name: '_MobxViewModel.model', context: context);

  @override
  CounterModel get model {
    _$modelAtom.reportRead();
    return super.model;
  }

  @override
  set model(CounterModel value) {
    _$modelAtom.reportWrite(value, super.model, () {
      super.model = value;
    });
  }

  late final _$indexAtom = Atom(name: '_MobxViewModel.index', context: context);

  @override
  int get index {
    _$indexAtom.reportRead();
    return super.index;
  }

  @override
  set index(int value) {
    _$indexAtom.reportWrite(value, super.index, () {
      super.index = value;
    });
  }

  late final _$_MobxViewModelActionController =
      ActionController(name: '_MobxViewModel', context: context);

  @override
  void increment() {
    final _$actionInfo = _$_MobxViewModelActionController.startAction(
        name: '_MobxViewModel.increment');
    try {
      return super.increment();
    } finally {
      _$_MobxViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrement() {
    final _$actionInfo = _$_MobxViewModelActionController.startAction(
        name: '_MobxViewModel.decrement');
    try {
      return super.decrement();
    } finally {
      _$_MobxViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  void reset() {
    final _$actionInfo = _$_MobxViewModelActionController.startAction(
        name: '_MobxViewModel.reset');
    try {
      return super.reset();
    } finally {
      _$_MobxViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
model: ${model},
index: ${index}
    ''';
  }
}
