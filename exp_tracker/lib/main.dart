import 'package:exp_tracker/model/expense_provider_model.dart';
import 'package:exp_tracker/screens/home_screen.dart';
import 'package:exp_tracker/screens/add_to_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ExpenseModel(),
      child: MaterialApp(debugShowCheckedModeBanner: false, home: HomePage()),
    );
  }
}
