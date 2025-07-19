// lib/presentation/widgets/prefs_navigation/prefs_navigation_layout.dart

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gustomaster/core/constants/app_assets.dart';
import 'package:gustomaster/presentation/widgets/shared/custom_nav_button.dart';

/// Un layout que muestra una fila de botones de navegación,
/// ajustando su tamaño y disposición según el ancho de la pantalla.
///
/// Este widget es un ejemplo clave de diseño responsivo. Utiliza LayoutBuilder
/// para obtener las dimensiones del espacio disponible y el widget Wrap para
/// posicionar los botones de forma inteligente.
class PrefsNavigationLayout extends StatelessWidget {
  const PrefsNavigationLayout({super.key});

  @override
  Widget build(BuildContext context) {
    // LayoutBuilder es un widget especial que reconstruye su árbol de widgets
    // en respuesta a los cambios en las restricciones de su padre.
    // Nos proporciona el objeto 'constraints', que contiene el ancho y alto máximos.
    return LayoutBuilder(
      builder: (context, constraints) {
        // Se define un punto de quiebre (breakpoint) para diferenciar entre
        // una interfaz de móvil y una de tablet.
        // Si el ancho máximo disponible es mayor a 500 píxeles lógicos,
        // se asume que es una pantalla grande (tablet).
        final isTablet = constraints.maxWidth > 500;

        // Se asigna dinámicamente el tamaño del botón.
        // Será 200 en pantallas grandes y 145 en pantallas pequeñas.
        final double buttonSize = isTablet ? 200 : 145;

        // El widget Wrap es la pieza central para el diseño adaptativo.
        // Posiciona a sus hijos en una línea horizontal (o vertical) y, si se
        // queda sin espacio, automáticamente "envuelve" al siguiente hijo
        // a la siguiente línea.
        return Wrap(
          // 'spacing' define el espacio horizontal mínimo entre los botones.
          spacing: 16.0,
          // 'runSpacing' define el espacio vertical entre las líneas si los
          // widgets se envuelven a una nueva fila.
          runSpacing: 16.0,
          // 'alignment' controla cómo se alinean los widgets en el eje principal.
          // WrapAlignment.center los centrará horizontalmente en el espacio disponible.
          alignment: WrapAlignment.center,
          children: [
            CustomNavButton(
              image: AppAssets.pokemonsImage,
              text: 'POKEMONS',
              // Se pasa el tamaño responsivo calculado al botón.
              size: buttonSize,
              onPressed: () {
                // Lógica de navegación para la lista de Pokémon de la API.
                // context.push('/api-list/pokemon');
              },
            ),
            CustomNavButton(
              image: AppAssets.addImage,
              text: 'CREAR GUSTO',
              size: buttonSize,
              onPressed: () => context.push('/prefs/new'),
            ),
            CustomNavButton(
              image: AppAssets.gustosImage,
              text: 'MIS GUSTOS',
              size: buttonSize,
              onPressed: () => context.push('/prefs'),
            ),
          ],
        );
      },
    );
  }
}
