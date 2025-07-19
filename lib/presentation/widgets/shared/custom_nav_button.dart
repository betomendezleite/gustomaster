// lib/presentation/widgets/shared/custom_nav_button.dart

import 'package:flutter/material.dart';
import 'package:gustomaster/core/constants/app_colors.dart';

/// Un botón de navegación personalizado, reutilizable y estilizado.
///
/// Este widget encapsula la lógica de presentación para un botón que incluye
/// una imagen y un texto, con un tamaño y acción personalizables.
class CustomNavButton extends StatelessWidget {
  /// El texto que se mostrará en la parte inferior del botón.
  final String text;

  /// La función que se ejecutará cuando el usuario presione el botón.
  final VoidCallback onPressed;

  /// La ruta del asset de la imagen que se mostrará en la parte superior.
  final String image;

  /// El tamaño (ancho y alto) del botón. Permite que el widget padre
  /// controle sus dimensiones para un diseño responsivo.
  final double size;

  /// Constructor del widget.
  ///
  /// Requiere los parámetros `text`, `onPressed` e `image`.
  /// El `size` tiene un valor por defecto de 145.0.
  const CustomNavButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.image,
    this.size = 145.0,
  });

  @override
  Widget build(BuildContext context) {
    // InkWell es un widget que hace a su hijo interactivo, respondiendo
    // a gestos táctiles con un efecto visual de "onda" (ripple effect).
    return InkWell(
      // La función a ejecutar al ser presionado.
      onTap: onPressed,
      // Define el borde del área de la onda para que coincida con el borde del contenedor.
      borderRadius: BorderRadius.circular(16),
      child: Container(
        // Se establece el tamaño del contenedor usando el parámetro 'size'.
        width: size,
        height: size,
        // Un padding interno para que el contenido no se pegue a los bordes.
        padding: const EdgeInsets.all(8),
        // BoxDecoration se utiliza para aplicar un diseño complejo al contenedor.
        decoration: BoxDecoration(
          // Define un gradiente de color lineal como fondo del botón.
          gradient: const LinearGradient(
              colors: [AppColors.background, AppColors.surface]),
          // Define el radio de las esquinas del contenedor.
          borderRadius: BorderRadius.circular(16),
          // Define un borde sólido alrededor del contenedor.
          border: Border.all(
            width: 2,
            color: AppColors.background,
          ),
          // Aplica una lista de sombras para dar un efecto de elevación.
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(87, 0, 0, 0),
              blurRadius: 8, // La intensidad del desenfoque de la sombra.
              offset: Offset(0, 4), // La posición de la sombra (eje X, eje Y).
            ),
          ],
        ),
        // Column organiza a sus hijos en una disposición vertical.
        child: Column(
          children: [
            // El widget Image se utiliza para renderizar la imagen desde los assets.
            Image(
              image: AssetImage(image),
              // Se establece una altura fija para la imagen, manteniendo consistencia.
              height: 90,
            ),
            // Un espacio vertical fijo entre la imagen y el texto.
            const SizedBox(
              height: 10,
            ),
            // El widget Text muestra el texto del botón.
            Text(
              text,
              textAlign: TextAlign.center, // Centra el texto horizontalmente.
              style: const TextStyle(
                color: AppColors.textPrimary, // Color del texto.
                fontSize: 16, // Tamaño de la fuente.
                fontWeight: FontWeight.w600, // Grosor de la fuente.
              ),
            ),
          ],
        ),
      ),
    );
  }
}
