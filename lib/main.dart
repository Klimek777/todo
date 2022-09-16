import 'package:flutter/material.dart';
import 'package:todo/plan_provider.dart';
import 'package:todo/views/plan_creator_screen.dart';
import 'package:todo/views/plan_screen.dart';

void main() {
  runApp(const MasterPlanApp());
}

class MasterPlanApp extends StatelessWidget {
  const MasterPlanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return PlanProvider(
      child: MaterialApp(
          theme: ThemeData(primarySwatch: Colors.purple),
          home: PlanCreatorScreen()),
    );
  }
}
