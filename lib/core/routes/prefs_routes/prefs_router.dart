// lib/core/routes/prefs/prefs_router.dart

import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

// Importa aquí solo las páginas de "gustos"

// Se define como una lista de RouteBase, no como un GoRouter completo.
final List<RouteBase> prefsRoutes = [
  GoRoute(
    path: '/prefs',
    builder: (context, state) =>
        const Placeholder(child: Text('Lista de Gustos')), // PrefsListPage()
    routes: [
      GoRoute(
        path: 'new', // Se resuelve a /prefs/new
        builder: (context, state) =>
            const Placeholder(child: Text('Nuevo Gusto')), // NewPrefPage()
      ),
      GoRoute(
        path: ':id', // Se resuelve a /prefs/:id
        builder: (context, state) {
          final id = state.pathParameters['id']!;
          return Placeholder(
              child: Text('Detalle del Gusto: $id')); // PrefDetailPage(id: id)
        },
      ),
    ],
  ),
];
