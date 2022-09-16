import 'package:flutter/material.dart';
import 'models/data_layer.dart';

class PlanProvider extends InheritedWidget {
  final _plans = [];
  PlanProvider({super.key, required super.child});

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => false;

  static List of(BuildContext context) {
    final provider = context.dependOnInheritedWidgetOfExactType<PlanProvider>();
    return provider!._plans;
  }
}
