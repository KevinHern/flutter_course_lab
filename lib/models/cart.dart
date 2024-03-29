import 'eshop_item.dart';

/*
    TODO Laboratory #07 count: 4
*/

/// This model is essentially the same as the Shop model. However, the difference is that
/// we have to initialize an empty list instead of adding elements. That means, the constructor is going to be
/// very simple. You only have to initialize the list with '= []'
///
/// And the best thing? The other functions are the same too! So you don't have to make tests for these functions.
class MyCart {
  final List<EShopItem> _myCart;

  // TODO Laboratory #07
  /// Initialize the variable '_myCart' as an empty list
  MyCart();

  /* ----- Provided Code for Laboratory #07 ----- */
  bool checkProduct({required String codeProduct}) {
    /// Checks for every item in your catalog and compares their Code Product
    for (EShopItem item in _myCart) {
      /// If a match was found, then the product already exists and returns true
      if (item.code == codeProduct) {
        return true;
      }
    }

    /// If no match was found, then the product does not exist and returns false
    return false;
  }

  void removeProduct({required int index}) => _myCart.removeAt(index);

  // TODO Laboratory #07
  /// Add the item to the myCart variable
  void addProduct({required EShopItem item}) => {};

  // TODO Laboratory #07
  /// Return the total elements in myCart
  int get length => 0;

  // TODO Laboratory #07
  /// Return myCart
  List<EShopItem> get myCart => [];
}
