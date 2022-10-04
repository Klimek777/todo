import 'package:flutter/material.dart';
import 'package:todo/controllers/plan_controller.dart';
import 'models/data_layer.dart';

class PlanProvider extends InheritedWidget {
  final _controller = PlanController();

  final _plans = [];
  PlanProvider({super.key, required super.child});

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => false;

  static PlanController of(BuildContext context) {
    PlanProvider? provider =
        context.dependOnInheritedWidgetOfExactType<PlanProvider>();
    return provider!._controller;
  }
}
