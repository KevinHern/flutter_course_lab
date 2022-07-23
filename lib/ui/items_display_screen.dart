import 'package:flutter/material.dart';
import 'package:flutter_course_labs/models/cart.dart';

import '../models/shop.dart';

/*
    TODO Laboratory #02 count: 1
    TODO Laboratory #04 count: 1
    TODO Laboratory #07 count: 1
*/

// TODO Laboratory #02
/// The first step before creating the class is to establish if this screen is Stateless or Stateful.
/// Think some steps ahead. You know that the shop articles have a number that represent their stock.
/// So when a user buys the article or you replenish the stock, the number changes and the UI
/// has to update to reflect the current values. But that UI update... is it done here or in the main_screen.dart?
///
/// Widgets to use:
/// - ListView.builder
///     * ItemCount
///     * Builder
/// - Card
///     * Elevation - assign 10.0
/// - ListTile
///     * Title - Display the name of the product
///     * Subtitle - Display the stock number of the product
/// - Padding
///     * Padding - Use EdgeInsets.symmetric and assign 8.0 as horizontal Padding and 4.0 as vertical Padding
///
/// Observations:
/// - For the moment, nothing should happen when pressing an item
/// - For the moment, lets not think on linking other screens with other purposes - they will come in time. Lets focus
/// on what we know at this point
///
/// After you have finished implementing this screen, remember to link it to the 'home' property that you can find in the
/// main.dart file. So when you boot up your app, this will be the first screen to show up
///
/// REMINDER: DO NOT DELETE THESE INSTRUCTIONS

// TODO Laboratory #04
/// Your task is to change the fonts displayed in the title and subtitle of the ListTile.
/// The Text Widget has a 'style' property that defines the font and its features that will be used.
/// Use your predefined fonts in the main.dart file by calling: Theme.of(context).textTheme
/// followed by either headline, subtitle or body - the font you consider that fits.

// TODO Laboratory #07
/// Your task is to add interactivity when the user presses an item of the catalog.
/// Add a button at the trailing property of the ListTile and whenever its clicked,
/// add the item to the cart model and reduce the stock number. This implemented is going to quite
/// complicated but lets keep it simple.
/// For the moment, everytime the button is clicked, the item is added to the cart regardless
/// if its already in the cart or not. Just keep in mind to always reduce the stock number when
/// its added to the cart.
/// An important detail is to not let the counter reach below 0. You can either keep showing the product
/// or hide it once it reaches 0 by using the Visibility Widget. I'll leave it to your discretion
///
/// As you can see, you need the Cart model you implemented in models/cart.dart
/// You need to add a variable that can hold that information. A good place is beneath
/// the shop variable you created long ago.
/// This also means you have to fix the file ui/main_screen.dart. You now have to pass
/// a Cart model from the main_screen.dart file to this screen. You will also notice you have
/// to create the cart model in said file. The perfect place? Beneath the shop variable creation
