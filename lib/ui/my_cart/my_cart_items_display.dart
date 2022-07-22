// Basic Imports
import 'package:flutter/material.dart';

// Models
import '../../models/cart.dart';
import '../../models/shop.dart';

/*
    TODO Laboratory #07 count: 1
*/

class MyCartItemsDisplay extends StatefulWidget {
  final Shop shop;
  final MyCart myCart;

  const MyCartItemsDisplay({required this.shop, required this.myCart, Key? key})
      : super(key: key);

  @override
  MyCartItemsDisplayState createState() => MyCartItemsDisplayState();
}

class MyCartItemsDisplayState extends State<MyCartItemsDisplay> {
  static const double padding = 8.0;
  @override
  Widget build(BuildContext context) {
    // TODO Laboratory #07
    /// Finish the implementation. Just a reminder of what Widgets to use:
    /// - ListView.builder
    ///     * ItemCount
    ///     * Builder
    /// - Card
    ///     * Elevation
    /// - ListTile
    ///     * Title
    ///     * Subtitle
    /// - Padding
    ///     * Padding
    ///
    /// To access the variables located in the MyCartItemsDisplay class, use widget.shop or widget.myCart.
    ///
    /// Also, implement a button that allows the user to remove items from the cart model.
    /// This means, you have to add a button at the trailing of the ListTile and whenever its pressed,
    /// the object should be removed from the list and the stock counter should increase.
    /// It is similar to what you did in the ui/items_display_screen.dart file but be careful
    /// with the order of the instructions
    return Center(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: padding / 2),
          child: ListView.builder(
            itemCount: widget.myCart.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: padding,
                  vertical: padding / 2,
                ),
                child: Card(
                  elevation: 10.0,
                  child: ListTile(
                    title: Text(
                      "Producto: (${widget.myCart.myCart[index].code}) ${widget.myCart.myCart[index].name}",
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    trailing: ElevatedButton(
                      child: const Icon(Icons.add_box_rounded),
                      onPressed: () => setState(() {
                        widget.myCart.myCart[index].stock++;
                        widget.myCart.removeProduct(index: index);
                      }),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
