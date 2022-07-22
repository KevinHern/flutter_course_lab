import 'package:flutter/material.dart';
import 'package:flutter_course_labs/models/cart.dart';
import 'package:flutter_course_labs/models/eshop_item.dart';
import 'package:sn_progress_dialog/progress_dialog.dart';

import '../../models/shop.dart';
import 'my_cart_items_display.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

/*
    TODO Laboratory #07 count: 5
*/

// TODO Laboratory #07
/// The implementation for this screen is very similar to the ItemsDisplayScreen. However, since this is a new screen,
/// you have to consider you need to create a new Scaffold with an AppBar with the respective list.
/// Lets think for a moment. We know that the Scaffold and AppBar are static or don't need to update if something happens
/// to the cart. For example, if a user decides to remove an element from the cart, we only have to update the list itself.
/// It would be a waste to update the Scaffold and AppBar Widgets.
///
/// With that in mind, we can conclude we can make 2 Widgets: a Stateless Widget that represents the screen itself and
/// contains both Scaffold and AppBar, and a Stateful Widget that will display the contents of the cart and is forced
/// to update everytime the user removes an element from said cart.
///
/// I went ahead and created the first Widget. Your task for this first assignment is to finish the implementation
/// of the display of the contents of the Cart Model. Don't forget to add a button which removes the element from the
/// cart and increases the stock number in the shop catalog.

class MyCartScreen extends StatelessWidget {
  /// A constant that defines the padding space
  static const double padding = 8.0;

  /// Here we declare we need the models Shop and Cart.
  /// Why Cart? It is the main model that contains the contents we want to display.
  /// Why Shop? If the user decides to remove an element from the Cart Model, we have to update the stock number of said
  /// removed product. For this reason, we need the Shop Model
  final Shop shop;
  final MyCart myCart;
  const MyCartScreen({required this.shop, required this.myCart, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            // TODO Laboratory #07
            /// When we press this button, the Navigator should take us to the root Screen of our application
            onPressed: () => Navigator.of(context).canPop()
                ? Navigator.of(context).pop()
                : {},
          ),
          // TODO Laboratory #07
          /// Here you put your Shop's name and edit the font style
          title: Text(
            'Cool Shop',
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'My Cart',

                // TODO Laboratory #07
                /// Edit the font style
                style: Theme.of(context).textTheme.headline1,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: padding * 2.5),
                child: SizedBox(
                  height: 500,
                  child: MyCartItemsDisplay(
                    shop: shop,
                    myCart: myCart,
                  ),
                ),
              ),
              ElevatedButton.icon(
                icon: const Icon(Icons.send),
                label: Text(
                  'Comprar',
                  style: Theme.of(context).textTheme.bodyText1!,
                ),
                style: ElevatedButton.styleFrom(
                  primary: Theme.of(context).primaryColor,
                ),
                onPressed: () async {
                  // TODO Laboratory #07
                  /// The purpose of this button is to practice how to handle async scenarios.
                  /// In this case, we want to create an HTTP request and send it to a server.
                  /// However, this server only accepts JSONs and POST requests. I'll guide you since this part
                  /// is complicated at some extent.

                  /// The first step is to show a loader to the user to indicate that a process is going on and it
                  /// may take some time.
                  /// We will use the sn_progress_dialog package to facilitate our lives by showing already predefined
                  /// loaders.

                  /// First, lets create a loader
                  final ProgressDialog loader =
                      ProgressDialog(context: context);

                  /// Then show the loader to the user by calling loader.show()
                  /// It takes 2 parameters: max and msg.
                  /// MAX parameter indicates how many steps the operation will take
                  /// or it can represent the completion percentage. In this case, it is easier to just indicate the process
                  /// takes 1 step.
                  /// For the MSG parameter, it simply shows a message while the process is executing. Feel free to show
                  /// any message you want

                  // Show the loader here
                  loader.show(max: 1, msg: 'Procesando...');

                  /// After showing the loader, we have to prepare the data before sending it to the server.
                  /// The server only accepts JSON and in this specific format:
                  /// {
                  ///   product_code1: {
                  ///     "name": "Product Name",
                  ///     "quantity": number,
                  ///   },
                  ///   product_code2: {
                  ///     "name": "Product Name",
                  ///     "quantity": number,
                  ///   },
                  ///   .
                  ///   .
                  ///   .
                  ///   product_codeN: {
                  ///     "name": "Product Name",
                  ///     "quantity": number,
                  ///   },
                  /// }
                  ///
                  /// As you can see, the format is very simple. We have to create an object for each product and then
                  /// concatenate each product.
                  /// In Flutter, we can't directly create a JSON from scratch but there is a workaround. We can use
                  /// the dictionary data structure to model a JSON, then convert said dictionary to a JSON
                  /// and finally send the resulting JSON to the server.
                  /// This is the general process with most commercial applications.
                  ///
                  /// 1) Lets go slowly. Lets first create an empty general dictionary with the type <String, dynamic>.
                  /// That means, the identifiers will be strings and the associated datatype that each key will contain
                  /// may vary. We can store ints, strings, models, etc.
                  /// Keep in mind JSONs limits itself to primitive values such as ints, Strings, bools and arrays.

                  final Map<String, dynamic> finalJson = {};

                  /// 2) Lets map the products in our cart model and concatenate them to the general dictionary
                  /// I'll help you out with this one since this is the most complex operation.
                  /// Lets use a foreach loop to iterate all the elements in our cart

                  for (EShopItem item in myCart.myCart) {
                    /// For each item in the cart, lets create a JSON object
                    /// You will notice this method can be found in the file **models/eshop_item.dart.
                    /// Go check it to get more insight about what it does.

                    final productJson = item.modelToJson();

                    /// The next step is to check if the JSON of the product is already in the dictionary.
                    /// If it is, we increase its quantity by 1 and if it isn't, we add the JSON to the dictionary.
                    /// We can tell if the JSON is already in the dictionary by checking if the product's code
                    /// already exists as a Key.
                    ///
                    /// Assign the product's code to the variable
                    final String productCode = item.code;

                    if (finalJson.containsKey(productCode)) {
                      /// If the product already exists, lets increase its quantity by 1
                      productJson[productCode]['quantity'] += 1;
                    } else {
                      /// If the product does not exist, lets add the products JSON to the dictionary
                      productJson[productCode] = productJson;
                    }
                  }

                  /// 3) Once we have our JSON ready, we can prepare our POST request, send it and await for
                  /// a response. With the help of the HTTP package, it is very easy to create it.
                  ///
                  /// We have to give it a URL (which you have to assign it to the variable 'link'),
                  /// then we define the headers (which the obvious JSON since we will give a JSON) and lastly,
                  /// we set the body contents. The body will contain our dictionary encoded in JSON (with
                  /// the help of the convert package)
                  /// jsonEncode() takes a dictionary as a parameter, and it happens we have finalJson as our dictionary
                  /// that contains the data we want to send. Fix the function by passing finalJson as an argument
                  ///
                  /// The server's URL is this:
                  final String serverLink = "";

                  // Creating and sending the POST request and awaiting for its answer
                  final response = await http.post(
                    Uri.parse(serverLink),
                    headers: <String, String>{
                      'Content-Type': 'application/json',
                    },
                    body: jsonEncode(finalJson),
                  );

                  /// 4) After we received the response, lets check the status code to see
                  /// if the operation was a success or not.
                  /// If the status code is 200, then everything went well. Otherwise, some error
                  /// happened either on the server, during communication or whatnot.
                  ///
                  /// Lets prepare a variable that will hold a message to be displayed to the user.
                  /// We will edit its contents accordingly to the situation

                  var message = "";

                  if (response.statusCode == 200) {
                    /// Lets also retrieve the message that the server sent us.
                    /// The response is also a JSON with the following format:
                    ///
                    /// {
                    ///   "success": true/false
                    /// }
                    ///
                    /// Its a simple JSON object with a field named 'success' that contains a boolean
                    /// To get that, we have to decode the JSON file that is contained in the response body.
                    /// Lets use the jsonDecode() Function to retrieve the field
                    final responseJson = jsonDecode(response.body);

                    /// Now lets edit the message to be displayed to the user.
                    /// Feel free to write whatever you want
                    if (responseJson['success']) {
                      // Success Message
                      message = "Operación completada";
                    } else {
                      // Failure message
                      message = "Operación fallida";
                    }
                  } else {
                    /// If for whatever reason something caused an error, lets just display a generic message to
                    /// the user.
                    /// In real marketable applications, you have to be more specific
                    message =
                        "Un error ocurrió con la comunicación al servidor. Intenta de nuevo.";
                  }

                  /// 5) Y el último paso consiste en cerrar el loader y desplegar el mensaje al usuario
                  if (loader.isOpen()) {
                    // TODO Laboratory #07
                    /// Close the loader with .close()
                    loader.close();
                  }

                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text(
                          "Aviso",
                          style: Theme.of(context).textTheme.headline1,
                        ),
                        content: Text(
                          message,
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        actions: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Theme.of(context).primaryColor,
                            ),
                            onPressed: () => Navigator.of(context).canPop()
                                ? Navigator.of(context).pop()
                                : {},
                            child: Text(
                              'Ok',
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                          ),
                        ],
                      );

                      /// Y listo, se acabó. Felicidades!
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
