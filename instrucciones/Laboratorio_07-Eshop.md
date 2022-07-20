# Laboratio 07 - E-Shop

## Objetivo General
Terminar la aplicación al poner en práctica todos los conocimientos adquiridos a lo largo del curso al terminar la última pantalla faltante de la aplicación y ajustar algunos detalles respecto al gestión de rutas y las pantallas desarrolladas previamente. 

## Objetivos Específicos
- Crear y terminar la última pantalla de la aplicación: 'cart'
- Ajustar los saltos a otras pantallas cuando se usa Navigator.of(context) para refrescar el UI y así desplegar la información correcta de acuerdo al estado de la información
- Ajustar la pantalla 'items_display' para añadirle interacción a los elementos del catálogo para que la pantalla de 'cart' funcione correctamente
- Aprender a implementar un HTTP POST request 

## Instrucciones
Este es el último laboratorio del curso y consiste en terminar la última pantalla ubicada en el archivo **ui/cart.dart** y afinar unos detalles sobre el sistema de rutas y la pantalla **ui/item_display.dart**.

Con respecto a la última pantalla, este es muy parecido a la pantalla **ItemsDisplayScreen*. Consiste en desplegar los contenidos de un carrito y se debe de mostrar un botón para que le permita al usuario proseguir con su compra. La implementación despliegue del contenido del carrito es muy parecido a la implementación del despliegue del catálogo de la tienda. Es decir, ya sabemos que existe un modelo que representará el carrito y en la pantalla existirá un ListView.builder Widget que nos ayudará a desplegar los contenidos.
Sin embargo, para que esto funcione, es necesario modificar el archivo **ui/items_display.dart**. Debes de agregar un botón para cada elemento del catálogo donde el usuario pueda presionarlo y añada el artículo al carrito. Esto implica que el artículo, una vez añadido al carrito, se debe de reducir su número de existencias (o stock) y si llega a 0, no se debe de desplegar para nada al usuario. Esto lo puedes lograr al usar el widget **Visibility** y para añadir el botón puedes utilizar el **ElevatedButton** Widget al modificar la propiedad de 'trailing' del ListTile que tienes en la implementación.

Luego, como último detalle, te corresponde arreglar el error del laboratorio #05. Cuando añadías un producto del formulario y regresabas al catálogo, era evidente que el nuevo producto no se desplegaba pero tenemos la certeza que las funciones involucradas pasaban las debidas pruebas en el directorio **test/models/shop_model_test.dart**. Este error ocurre porque no refrescamos el UI después que se haya regresado al catálogo. Esto lo podemos corregir al introducir un poco de programación asíncrona. Como tal, la operación Navigator.of(context).pushNamed() es una función asíncrona, entonces podemos realizar un await e implementar un callback '.then()' para obligar una actualización en el UI por si ocurrió un cambio en catálogo o no.
Todo lo que hiciste en **ui/components/navigation_drawer.dart** y en **main.dart** respecto al manejo de rutas de la pantalla *EShopFormScreen**, lo tienes que volver a repetir pero para la pantalla **MyCartScreen**. Una vez hayas terminado esto, terminaste por completo toda respecto a la gestión de rutas de la aplicación.

Y como último detalle, lo que tienes que hacer es implementar un botón en la pantalla **ItemsDisplayScreen** que cree un JSON y lo mande al servidor **<insertar servidor aquí>** por medio de un HTTP POST Request. Una vez enviado, tiene que desplegar al usuario la respuesta por medio de un diálogo. Lo único que tiene que desplegar es 'Compra Exitosa' si el servidor devuelve una respuesta positiva o 'Hubo un error en su compra' si el servidor devuelve una respuesta negativa.

Si llegaste hasta aquí, terminaste y todo funciona debidamente, déjame felicitarte porque ya estás capacitado o capacitada para usar tus conocimientos en Flutter para realizar aplicaciones y ponerlas en el mercado. Aún queda mucho más por aprender y si te interesa seguir adentrándote en el mundo de Flutter, te dejo un Road Map para que mires qué más puedes aprender [aquí](https://github.com/olexale/flutter_roadmap/blob/master/images/FlutterRoadmap.png).  

### Archivos a modificar
- ui/models/cart.dart
- ui/items_display.dart
- ui/my_cart.dart
- main.dart
- ui/components/navigation_drawer.dart

## Asignaciones
1) Terminar la implementación del modelo **Cart** ubicado en **ui/models/cart.dart**
2) Ajustar la pantalla 'ItemDisplayScreen' ubicada en **ui/items_display.dart** para añadirle la interacción debida con el modelo **Cart** y afinar detalles sobre el despliegue de elementos del UI
3) Terminar la implementación de la pantalla **MyCartScreen** ubicada en **ui/my_cart.dart**
4) Aplicar programación asíncrona en el archivo **ui/components/navigation_drawer.dart** para obligar una actualización en el UI al implementar un callback '.then()' a la instrucción 'Navigator.of(context).pushNamed()'.
5) Implementar un botón en **ui/my_cart.dart** que cree un JSON y lo mande al servidor **<insertar servidor>** por medio de un HTTP POST Request. Por último, que espere por la respuesta del servidor y despliegue un mensaje de retroalimentación al usuario.