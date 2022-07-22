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
  @override
  Widget build(BuildContext context) {
    // TODO Laboratory #07
    /// Finish the implementation. Just a reminder of what Widgets to use:
    /// - ListView.builder
    ///     * ItemCount
    ///     * Builder
    /// - Card
    /// - ListTile
    ///     * Title
    ///     * Subtitle
    /// - Padding
    ///     * Padding
    ///
    /// To access the variables located in the MyCartItemsDisplay class, use widget.shop or widget.myCart.
    return Center(
      child: null,
    );
  }
}
