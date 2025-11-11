# isaacperezmascaro_rodrigobrizramos_p1

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Dependencias externas (puedes mencionarlas en el vídeo)

	`lib/views/list_view.dart` para mostrar iconos vectoriales (por ejemplo,
	el icono de "play" sobre cada tarjeta). Justificación breve para el vídeo:
	- Proporciona acceso a una amplia colección de iconos bien diseñados
		(Font Awesome) sin necesidad de añadir imágenes rasterizadas.
	- Los iconos son vectoriales y escalables, por lo que mantienen buena
		apariencia en pantallas de diferentes resoluciones.
	- Facilita la personalización de color y tamaño desde código (ej. usar
		`FaIcon(FontAwesomeIcons.play, color: Colors.green)`).
	- Reduce la necesidad de gestionar archivos de imagen extra y mantiene el
		bundle más limpio.

Si en algún momento quieres añadir carga remota y cacheo de pósters, puedo
volver a integrar `cached_network_image` y añadir ejemplos; por ahora la app
funciona principalmente con assets locales y un placeholder seguro si falta
alguna imagen.
