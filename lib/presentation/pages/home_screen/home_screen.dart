// lib/presentation/pages/home_screen/home_screen.dart

import 'package:flutter/material.dart';
import 'package:gustomaster/core/constants/app_assets.dart';
import 'package:gustomaster/core/constants/app_colors.dart';
// Importa el widget de layout que contiene la lógica de navegación responsiva.
import 'package:gustomaster/presentation/widgets/prefs_navigation/prefs_navigation_buttons.dart';

/// Define la pantalla de inicio (splash screen) de la aplicación.
///
/// Esta pantalla actúa como la vista de bienvenida, mostrando la identidad
/// visual de la marca y proporcionando los puntos de entrada principales
/// a las funcionalidades de la aplicación.
class HomeScreen extends StatelessWidget {
  /// Constructor para la `HomeScreen`.
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold implementa la estructura visual básica de Material Design.
    return Scaffold(
      // El widget `body` principal de la pantalla.
      body: Container(
        // Se define una anchura y altura que ocupan la totalidad del espacio padre.
        width: double.infinity,
        height: double.infinity,
        // La propiedad `decoration` permite estilizar el contenedor.
        decoration: const BoxDecoration(
          // Se establece una imagen como fondo del contenedor.
          image: DecorationImage(
            // `AssetImage` carga una imagen desde la carpeta de assets del proyecto.
            image: AssetImage(AppAssets.backgroundApp),
            // `BoxFit.cover` escala la imagen para que cubra completamente el
            // contenedor, manteniendo su relación de aspecto.
            fit: BoxFit.cover,
          ),
        ),
        // `SafeArea` es un widget que inserta un padding suficiente a su hijo
        // para evitar intrusiones por parte del sistema operativo (ej. notch, status bar).
        child: const SafeArea(
          // `Padding` añade un espaciado interno a su widget hijo.
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 40.0),
            // `Column` es un widget de layout que organiza a sus hijos en una
            // matriz vertical.
            child: Column(
              // `mainAxisAlignment` controla cómo los hijos de una `Column`
              // se distribuyen a lo largo de su eje principal (vertical).
              // `MainAxisAlignment.spaceAround` distribuye el espacio libre
              // equitativamente entre los hijos.
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Renderiza la imagen del logo principal.
                Image(
                  image: AssetImage(AppAssets.logo),
                  // Se define una altura fija para el logo para mantener consistencia visual.
                  height: 150,
                ),
                // `SizedBox` crea un espacio vacío de un tamaño definido,
                // útil para añadir espaciado fijo entre widgets.

                // Se instancia el widget `PrefsNavigationLayout`, encapsulando
                // la lógica de los botones de navegación y promoviendo la reutilización.
                PrefsNavigationLayout(),

                // `Column` anidada para agrupar los textos del pie de página.
                Column(
                  children: [
                    Text(
                      "© 2025 GUSTOMASTER",
                      style: TextStyle(
                        color: AppColors.greyDark,
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      "Todos los derechos reservados.",
                      style: TextStyle(
                        color: AppColors.greyDark,
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      "Desarrollado por Alberto Mendez Leite",
                      style: TextStyle(
                        color: AppColors.greyDark,
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
