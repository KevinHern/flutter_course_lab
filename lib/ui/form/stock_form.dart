import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_course_labs/models/eshop_item.dart';

import '../../models/shop.dart';

/*
    TODO Laboratory #04 count: 6
*/

class StockForm extends StatefulWidget {
  /// Once again, we declare we need the Shop model here. This is because
  /// the form will be responsible for directly adding a product to the catalog.
  final Shop shop;
  const StockForm({required this.shop, Key? key}) : super(key: key);

  @override
  StockFormState createState() => StockFormState();
}

class StockFormState extends State<StockForm> {
  /// A constant that defines the padding space
  static const double padding = 8.0;

  /// This is the form key which will help us check the current state of the form and validate
  /// all the input values to see if it is possible to do some future operations with the given information
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // TODO Laboratory #04
  /// Since a shop article requires 3 fields to be created, our form will contain 3 input fields that each one will.
  /// The class is TextEditingController()

  void _showFeedback({required String message}) => showDialog(
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
        },
      );

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10.0,
      child: Padding(
        padding: const EdgeInsets.all(padding),
        child: Form(
          // TODO Laboratory #04
          /// The Form Widget has a property called 'key' which is where we put the formKey we created before
          key: null,
          //autovalidateMode: AutovalidateMode.always,
          child: Column(
            children: [
              // TODO Laboratory #04
              /// Here you will complete the form by programming the remaining TextFormFields and configuring each
              /// one to receive some kind of value.
              /// Remember, you want the form to capture the following information:
              /// - Product Name (String)
              /// - Stock Available (Number)
              /// - Product Code (String)
              ///
              /// Here you will find one TextFormField with some UI decoration that you can modify.
              /// Also, here are some useful properties you have to configure for each input field:
              /// - style (TextStyle): for the style of text displayed. Here goes the usage of Theme.of(context)
              /// - controller (TextEditingController): give a controller to make the field reflect the user input in real time and then
              /// later be able to manipulate said information
              /// - readOnly (bool): allows read only or not
              /// - textCapitalization (TextCapitalization): Makes the field capitalize words by sentences, by words or none
              /// - textInputAction (TextInputAction): It tells the cursor to move to the next input field or unfocus
              /// - keyBoardType (TextInputType): Tells device to switch to a predefined keyboard.
              /// - validator (void Function?): function that evaluates the current user input.
              /// - inputFormatters (services.dart): Allows to write more constraints regarding the input and
              ///   even allows for some extra operations (like all caps, accept only numbers, etc.)
              ///   Example to only accept digits:
              ///   inputFormatters: [
              ///     FilteringTextInputFormatter.digitsOnly,
              ///   ],
              Padding(
                padding: const EdgeInsets.only(bottom: padding),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Some Text Here",
                    icon: Icon(Icons.person),
                    labelText: "Some Text Here",
                  ),
                  style: null,
                  controller: null,
                  readOnly: false,
                  textCapitalization: TextCapitalization.none,
                  textInputAction: TextInputAction.none,
                  keyboardType: TextInputType.none,
                  validator: (String? value) {
                    // TODO Laboratory #04
                    /// Some checks for any type of Input Field:
                    /// - Remove all the spaces (use .trim() function) and check if its empty (use isEmpty getter)
                    /// - If you want the String field to check for a format, you have to use Regular Expressions
                    ///
                    /// If the input field is acceptable, then you have to return null. The null values tells the form
                    /// that this particular Input Field contains a valid value.

                    return null;
                  },
                ),
              ),

              /// Here you will find the buttons you have to implement
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(
                    icon: const Icon(Icons.refresh),
                    label: Text(
                      'Reset',
                      style: Theme.of(context).textTheme.bodyText1!,
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                    ),
                    onPressed: () => setState(
                      () {
                        final String blank = "";

                        // TODO Laboratory #04
                        /// Everytime the reset button is pressed, you want to reset the input fields to a default value.
                        /// Normally, the default value is just blank - no characters or strings.
                        ///
                        /// However, given each Input Field has an associated controller, the controller allows you to
                        /// manipulate the value that said Input Field contains.
                        /// With this in mind, you can set the 'text' property of each controller to blank and then update
                        /// the form with the usage of setState().
                      },
                    ),
                  ),
                  ElevatedButton.icon(
                    icon: const Icon(Icons.save_alt),
                    label: Text(
                      'Guardar',
                      style: Theme.of(context).textTheme.bodyText1!,
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Theme.of(context).primaryColor,
                    ),
                    onPressed: () {
                      // TODO Laboratory #04
                      /// The save button is arguable the most important button in every form.
                      /// The button follows a straightforward flowchart:
                      /// 1) It validates the current state of the form, checking if every Input Field
                      /// contains a valid value based on the validator function
                      /// 2) (Optional) Performs some intermediary operations
                      /// 3) Creates a Model and does some operation with it (adds to a list, sends its information
                      /// to a database, etc.)
                      /// 4) Display some feedback (either if the operation was successful or if it failed)

                      /// 1) Validate the current Form
                      /// The formKey has a property called 'currentState' to which you can check if its valid
                      /// by calling the 'validate()' method on it
                      bool isFormValid = true;

                      /// 2) Intermediary Operations
                      if (isFormValid) {
                        /// 3) Create a new EShopItem Model and fill up the constructor values using the controllers
                        /// Remember, the controller is a gateway between your code and the user values.
                        /// You can extract said values by using the 'text' property of the controllers

                        final EShopItem newItem = EShopItem();

                        /// As you notice, the code Product is a unique value. It means that 2 products in
                        /// your catalog can't have the same Code Product. If the product you are adding
                        /// already exists, then it doesn't make sense to add it.
                        ///
                        /// I'll give you the code to check for it but feel free to inspect it. The function is
                        /// called 'checkProduct' located in the file models/shop.dart

                        final bool productAlreadyExists = widget.shop
                            .checkProduct(
                                codeProduct: 'Something important goes here');

                        if (!productAlreadyExists) {
                          /// And finally, if everything is correct, then add the new product you created to your
                          /// Shop's catalog. Use the function 'addProduct' which is located in
                          /// the file models/eshop_item.dart

                          // Function here

                          /// If everything is right, then lets display some positive feedback to the user
                          _showFeedback(
                              message: "Producto creado y añadido al catálogo");
                        } else {
                          /// Since the product already exists, lets display some message
                          _showFeedback(
                              message:
                                  "El producto no se pudo agregar al catálogo porque ya existe");
                        }
                      }
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
