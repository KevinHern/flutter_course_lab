import 'eshop_item.dart';

class Shop {
  /// This field is private! That means none but the class can check its contents and modify it directly
  late final List<EShopItem> _goods;

  /// This is the constructor. When a Shop is instantiated, we want to have already defined items.
  /// This is the perfect place for filling up the goods list which contains all te articles you want to create.
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
}
