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

### Archivos a modificar
- main.dart
- models/eshop_item.dart
- models/shop.dart
- ui/items_display.dart

### Asignaciones
1) Elige la temática para tu aplicación y modifica el archivo **ui/item_display.dart** para asignar los fonts apropiados a los textos desplegados.
2) Completa la implementación del formulario ubicado **models/shop.dart**
3) Crea la pantalla para desplegar el listado de tus artículos, siguiendo las instrucciones anotadas en el archivo **ui/items_display.dart**.


