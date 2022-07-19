import 'eshop_item.dart';

/*
    TO DO Laboratory #02 count: 1
*/

class Shop {
  /// This field is private! That means none but the class can check its contents and modify it directly
  late final List<EShopItem> _goods;

  /// This is the constructor. When a Shop is instantiated, we want to have already defined items.
  /// This is the perfect place for filling up the goods list which contains all te articles you want to create.

  // TO DO Laboratory #02
  Shop() {
    /// We have to initialize a List, don't we? Else, how can we fill it up?
    _goods = [];

    /// With the 'add' method, we can add elements to the empty list.
    /// Once you finish implementing EShopClass, you will notice you have to modify this instruction.
    /// Repeat this 10 times.
    _goods.add(
      EShopItem(),
    );
  }

  /* ----- Provided Code for Laboratory #04 ----- */
  bool checkProduct({required String codeProduct}) {
    /// Checks for every item in your catalog and compares their Code Product
    for (EShopItem item in _goods) {
      /// If a match was found, then the product already exists and returns true
      if (item.codeProduct == codeProduct) {
        return true;
      }
    }

    /// If no match was found, then the product does not exist and returns false
    return false;
  }

  void addProduct({required EShopItem item}) => _goods.add(item);
}
