import 'package:finance/screens/onboarding.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(FinanceApp());
}

class FinanceApp extends StatelessWidget {
  const FinanceApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Onboarding(),
    );
  }
}
