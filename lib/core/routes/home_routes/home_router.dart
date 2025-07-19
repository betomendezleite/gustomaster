// lib/core/routes/home_router.dart

import 'package:go_router/go_router.dart';
import '../../../presentation/pages/home_screen/home_screen.dart';

final homeRoutes = [
  GoRoute(
    path: '/',
    builder: (context, state) => const HomeScreen(),
  ),
];
