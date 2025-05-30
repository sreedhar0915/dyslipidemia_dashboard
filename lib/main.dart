import 'package:dyslipidemia_dashboard/screen/dyslipidemia_dashboard/controller/dyslipidemia_dashboard_controller.dart';
import 'package:dyslipidemia_dashboard/screen/dyslipidemia_dashboard/screens/dyslipidemia_dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => DyslipidemiaDashboardController(),
    )
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DyslipidemiaDashboardScreen(),
    );
  }
}
