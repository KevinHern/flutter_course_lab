import 'eshop_item.dart';

/*
    TO DO Laboratory #07 count: 1
*/

/// This model is essentially the same as the Shop model. However, the difference is that
/// we have to initialize an empty list instead of adding elements. That means, the constructor is going to be
/// very simple. You only have to initialize the list with '= []'
///
/// And the best thing? The other functions are the same too! So you don't have to make tests for these functions.
class MyCart {
  final List<EShopItem> _myCart;

  // TO DO Laboratory #07
  /// Initialize the variable '_myCart' as an empty list
  MyCart();

  /* ----- Provided Code for Laboratory #07 ----- */
  bool checkProduct({required String codeProduct}) {
    /// Checks for every item in your catalog and compares their Code Product
    for (EShopItem item in _myCart) {
      /// If a match was found, then the product already exists and returns true
      if (item.codeProduct == codeProduct) {
        return true;
      }
    }

    /// If no match was found, then the product does not exist and returns false
    return false;
  }

  void addProduct({required EShopItem item}) => _myCart.add(item);

  List<EShopItem> get myCart => _myCart;
}
