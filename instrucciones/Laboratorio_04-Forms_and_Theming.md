# Laboratio 04 - Formulario y UI

## Objetivo General
Aplicar los conocimientos adquiridos sobre los formularios al crear uno para añadir nuevos artículos al catálogo de la tienda y definir un diseño de UI apropiado para la aplicación.

## Objetivos Específicos
- Realizar la pantalla del Formulario para añadir un nuevo artículo
- Terminar la implementación de la pantalla de despliegue del catálogo
- Definir el diseño de UI

## Instrucciones

Para la primera parte de este laboratorio, estarás definiendo la temática de tu aplicación. Es decir, estarás definiendo los colores primarios, opcionalmente el color secundario y los fonts que utilizarás a lo largo de la aplicación. Todo esto irá en el archivo **main.dart**.
Utiliza las herramientas de [Material.io](https://material.io/resources/color/#!/?view.left=0&view.right=0) y la de [Fontjoy](https://fontjoy.com) para elegir los colores y los fonts, respectivamente.
Una vez hayas terminado, vuelve al archivo **ui/item_display.dart** para editar todos los Text Widgets que utilizaste y asignar el estilo del font que consideres apropiado (recuerda, hay headline, subtitle y body fonts).

Y por último, para añadirle más funcionamiento a la aplicación, crearás una pantalla que tenga un formulario donde te permita ingresar nuevos productos al catálogo. Debes de asegurarte que el formulario logre validar el input. Esto quiere decir que implementarás las debidas restricciones (como por ejemplo, el número ingresado en stock no debe ser negativo, tampoco debe de haber espacios en blanco innecesarios al inicio o al final del nombre o código del producto). Te ayudará mucho la propiedad 'validator' en los TextFormField Widgets.
Y como última tarea en esta pantalla, debes implementar dos botones: uno de reset y otro para crear un producto en base a los inputs del formulario y agregarlo al catálogo de la tienda. Encontrás una guía más instrucciones en el archivo **ui/form/eshop_form.dart**.

## Archivos a modificar
- main.dart
- ui/form/stock_form.dart
- ui/form/form_screen.dart
- ui/components/navigation_drawer.dart

## Asignaciones
1) Elige la temática para tu aplicación y asigna los colores y fonts en el archivo **main.dart** 
2) Modifica el archivo **ui/item_display.dart** para asignar los fonts apropiados a los textos desplegados.
3) Completa la implementación del formulario ubicado **ui/form/stock_form.dart**, las funciones en **models/shop.dart** y los botones "reset" y "guardar"
4) Completa los detalles de Theming en **ui/form/form_screen.dart** y en **ui/components/navigation_drawer.dart** 
5) (Opcional) Cambia el Widget de la propiedad 'child' en el archivo **main_screen.dart** al Widget **EShopFormScreen** para probar el formulario. 

## Observaciones
- Puedes consultar el código fuente de la demostración de los archivos [lib/unit_two/form.dart](https://github.com/KevinHern/flutter_course/blob/main/lib/unit_two/form.dart) y [lib/main.dart](https://github.com/KevinHern/flutter_course/blob/main/lib/main.dart) 

