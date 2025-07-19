// lib/core/routes/router.dart

import 'package:go_router/go_router.dart';
import 'package:gustomaster/core/routes/prefs_routes/prefs_router.dart';

// Módulos de rutas

import 'home_routes/home_router.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    // Usar el operador 'spread' (...) para agregar todas más las rutas
    ...homeRoutes, //ruta del Home Screen
    ...prefsRoutes, //ruta de los Prefs
  ],
);
