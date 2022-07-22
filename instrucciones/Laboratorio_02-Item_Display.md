# Laboratio 02 - Item Display

## Objetivo General
Conocer y familiarisarce con la herramienta Flutter al desarrollar una fracción de la aplicación final del curso.

## Objetivos Específicos
- Aplicar los conocimientos adquiridos de Dart
- Aplicar los conocimientos adquiridos de la Lección 01, 02, 03 y 04
- Crear la primera pantalla de la aplicación: Item in Stock Display

## Instalación

### Flutter

Si aún no tienes Flutter instalado en tu computadora, sigue [esta guía](https://docs.flutter.dev/get-started/install) para instalarlo. Lo más importante es que no pierdas de vista el directorio o ubicación en donde colocas el SDK de Flutter ya que, al crear un nuevo proyecto de Flutter se te pedirá la ubicación del SDK.

### Emulador (opcional)

Te sugiero que también añadas un emulador Android para que puedas experimentar cómo se vería tu aplicación en un dispositivo móvil sin necesidad de tener uno físico. O si lo deseas, también puedes utilizar tu [dispositivo Android](https://developer.android.com/studio/run/device) fisico para realizar pruebas.
Para algunas computadoras y algunos teléfonos, no es necesario que sigas a cabalidad todas las instrucciones de la guía; basta con solo conectar ambos dispositivos por medio de un cable USB y dejar que automáticamente se instalen los drivers.

## Instrucciones

Como esta es la primera vez que usas Flutter, empezaremos fácil. La tarea que tienes que hacer es simplemente implementar una pantalla que despliegue 10 artículos de cualquier tipo pero que estén relacionados (ejemplo: comida, tecnología, música, etc.) y que al abrir la aplicación, sea lo primero que mires.
Ya se te proporciona código base para que no te sientas perdido. En donde encuentres secciones de **// TO DO ** es donde implementarás tu código.

## Archivos a modificar
- main.dart
- models/eshop_item.dart
- models/shop.dart
- ui/items_display.dart

## Asignaciones
1) Completa la implementación del modelo **EShopItem** ubicado en el archivo **models/eshop_item.dart**. Como es el artículo que pondrás a venta, debe llevar: Nombre, cantidad de existencias (o stock) y un código de producto (puede ser inventado). Además, el constructor recibirá como parámetros el Nombre del artículo, el número que hay en stock y el código.
2) Crea 10 elementos ficticios para tu tienda al llenar la lista de artículos y completa los métodos del modelo ShopItems ubicada en el archivo **models/shop.dart**
3) Crea la pantalla para desplegar el listado de tus artículos, siguiendo las instrucciones anotadas en el archivo **ui/items_display.dart**.

## Observaciones
- Puedes consultar el código fuente de la demostración para ayudarte con esto por si te pierdes, específicamente el ejemplo ubicado en [lib/unit_one/example.dart](https://github.com/KevinHern/flutter_course/blob/main/lib/unit_one/example.dart)

