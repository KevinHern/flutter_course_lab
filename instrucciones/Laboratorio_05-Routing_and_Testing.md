# Laboratio 05 - Routing y Testing

## Objetivo General
Aplicar los conocimientos adquiridos sobre cómo Flutter maneja internamente la navegación de rutas con nombre y realizar pruebas para verificar que todo lo que se ha trabajado hasta el momento funciona correctamente.

## Objetivos Específicos
- Realizar un Mapeo de Rutas que le indique a la aplicación la primera pantalla a mostrar al usuario
- Aprender a pasar argumentos entre Rutas
- Terminar de implementar el menú
- Terminar de implementar las pruebas y pasarlas

## Instrucciones

En el laboratorio 4 terminamos la segunda pantalla de nuestra aplicación. Sin embargo, aún no logramos que ambas pantallas se logren comunicar entre sí.
Para este laboratorio, se te pide que implementes el sistema de navegación de la aplicación. Ten en mente que la pantalla principal que se quiere mostrar es la que despliega el catálogo de la tienda pero, tiene que existir un medio para que puedas accesar a la pantalla del formulario.
Utiliza Named Routes para la navegación entre pantallas. Es una buena práctica usar nombres y no solo enlazar pantallas por medio de widgets.
Para la implementación del sistema de navegación, debes de ir al archivo **main.dart** e implementar las 3 propiedades:
- home
- routes
- onGenerateRoute

Algo que sabemos es que ambas pantallas comparten el modelo **Shop**. Si por medio de **EShopFormScreen** agregas un nuevo producto, entonces la pantalla **ItemDisplay** debe de mostrar los productos anteriores más el producto agregado.
Debo de recordarte que por ninguna circunstancia el nuevo producto agregado debe de desaparecer. Es un detalle muy sútil pero importante.

Y por último, aprenderás a realizar **Unit Testing** empleando el API que Flutter proporciona. No harás pruebas muy complicadas ya que hasta el momento no hemos realizado una aplicación muy complicada.
Te proporcioné una prueba ya realizada y documentada para que observes cómo es que se implementan y el flujo que se debe de seguir. Debes de pasar todas las pruebas que se encuentran en los archivos **test/models/shop_model_test.dart**.

## Archivos a modificar
- main.dart
- ui/components/navigation_drawer.dart
- ui/form/form_screen.dart
- test/models/shop_model_test.dart

## Asignaciones
1) Completa la implementación del formulario ubicado **models/shop.dart** y los botones "reset" y "guardar"
2) Completa las pruebas encontradas en el archivo **test/models/shop_model_test.dart**
3) Implementa un las propiedades 'initialRoute', 'routes' y 'onGenerateRoute' del sistema de navegación en **main.dart**
4) Completa la función **onFormPress** en **ui/components/main_screen.dart** para terminar de enlazar el sistema de rutas implementado en **main.dart** y el las interacciones del usuario
5) Arregla la función para retornar a la pantalla principal en **ui/form/form_screen.dart**

## Observaciones
- Cuando termines de implementar el formulario y el sistema de rutas, te darás cuenta que cuando agregues un producto empleando el formulario y regreses al catálogo, el producto aún no se mostrará. Este problema lo resolveremos en el Laboratorio #07.
- Puedes consultar el código fuente de la demostración del archivo [lib/main.dart](https://github.com/KevinHern/flutter_course/blob/main/lib/main.dart)