// Basic Imports
import 'package:flutter_course_labs/models/eshop_item.dart';
import 'package:flutter_course_labs/models/shop.dart';
import 'package:flutter_test/flutter_test.dart';

/*
    TO DO Laboratory #05 count: 3
*/

void main() {
  /// For testing in Flutter, it is composed in 3 sections:
  /// - Data preparation
  /// - Test
  /// - Evaluation
  ///
  /// The first step consists of creating dummy variables with invented data that will be used to test
  /// certain functions, models, etc.
  /// The second step consists of performing the actual test. It is basically calling the functions and methods
  /// on the dummy data and let the program execute all the intermediary operations.
  /// And the third step consists of comparing the obtained result obtained from the second step versus
  /// the expected result.
  ///
  /// Now, Flutter allows you to run individual tests and group tests that are intrinsically connected.
  /// For example, you can group tests that involve a model and you test when the operations are successful.
  /// The same can be done when operations fail and return something
  /// This helps you to keep tidy your test code and it is easier to locate specific tests. It is a good practice
  /// to group related tests
  ///
  /// Another good practice is to be as descriptive as possible with your tests. You should
  /// be very specific what you want to test and the expected results. There is an agreement on how to write
  /// test descriptions and it is the following:
  /// "XY thing should return a result/should perform something/should modify something when Z is called on W"
  ///
  /// Of course, you can edit the description as you see fit.
  ///
  ///
  ///
  /// The first test group that we will run is verifying the correct behaviour of
  /// the functions of the Shop Model provided in the laboratory #04.

  group(
    'Shop Model Tests',
    () {
      // TO DO Laboratory #05
      /// Complete the test
      test(
        "'isCatalogEmpty' should return FALSE when called on a Shop Model with catalog that contains at least one element",
        () {
          /// Step 1: Prepare Data
          /// We will create dummy data in order to perform the test
          final Shop shop = Shop();

          /// Step 2: Perform the Test
          /// Call the function and save the result
          final bool result = shop.isCatalogEmpty();

          /// Step 3: Compare results
          /// Using the 'except' function, you pass the expected result and the actual result.
          /// When running the test, this function will tell you if the test was passed or not
          expect(result, false);

          /// Step 4: Squash the bugs
          /// As you saw, the test failed because the function always return true no matter what.
          /// Fix that by replacing true with '_goods.isEmpty'
        },
      );

      // TO DO Laboratory #05
      /// Complete the test
      test(
        "'clearCatalog' should wipe out the catalog when called on a Shop Model no matter if it contains products or not",
        () {
          /// Step 1: Prepare Data
          final Shop shop = Shop();

          /// Step 2: Perform the Test
          shop.clearCatalog();
          final bool result = shop.isCatalogEmpty();

          /// Step 3: Compare results
          expect(result, true);

          /// Step 4: Squash the bugs
        },
      );

      // TO DO Laboratory #05
      /// Complete the test
      test(
        "'addProduct' should add a product to the catalog when called on a Shop Model",
        () {
          /// Step 1: Prepare Data
          final Shop shop = Shop();
          final EShopItem dummyItem =
              EShopItem(name: 'name', stock: 1, code: 'code');

          shop.addProduct(item: dummyItem);

          /// Step 2: Perform the Test
          final bool result = shop.checkProduct(codeProduct: dummyItem.code);

          /// Step 3: Compare results
          expect(result, true);
        },
      );
    },
  );
}
