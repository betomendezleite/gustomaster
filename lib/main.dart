// lib/main.dart

import 'package:flutter/material.dart';
import 'package:gustomaster/core/constants/app_theme.dart';
import 'package:gustomaster/core/routes/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'GustoMaster',
      theme: AppTheme.lightTheme(),
      routerConfig: router,
    );
  }
}
