import 'package:flutter/material.dart';
import 'package:flutter_course_labs/models/shop.dart';
import 'package:flutter_course_labs/ui/form/stock_form.dart';

/*
    TO DO Laboratory #04 count: 1
    TO DO Laboratory #05 count: 1
*/

class EShopFormScreen extends StatelessWidget {
  /// A constant that defines the padding space
  static const double padding = 8.0;

  /// Here we declare we need the variable Shop. Why? Remember, if we add a product to the catalog,
  /// we have to directly modify the catalog which is the variable '_goods' located in the Shop Model.
  /// At this point, if we enter in this screen, we must know the current products that can be found
  /// in the catalog for future operations.
  final Shop shop;
  const EShopFormScreen({required this.shop, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          // TO DO Laboratory #05
          /// When we press this button, the Navigator should take us to the root Screen of our application
          onPressed: () => {},
        ),
        // TO DO Laboratory #04
        /// Here you put your Shop's name
        //title: ,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: padding),
                child: Text("Your title here with the font"),
              ),

              /// The actual form. Check the file ui/stock_form.dart for the implementation
              StockForm(shop: shop),
            ],
          ),
        ),
      ),
    );
  }
}
