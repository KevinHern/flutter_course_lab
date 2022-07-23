/*
    TODO Laboratory #02 count: 2
*/

class EShopItem {
  // TODO Laboratory #02
  /// Are the Variables final, dynamic or var? The name and code of the article don't seem very likely to change. What about the stock?
  /// I'll help you with one.
  /// The names of the other variables are:
  /// - stock
  /// - code

  final String name;

  // TODO Laboratory #02
  /// The constructor is going to receive the name and code of the article, and the stock number
  /// As part of best practices, use NAMED PARAMETERS

  /* ---- Laboratory #07 function ----- */
  Map<String, dynamic> modelToJson() => {
        'name': this.name,
        'quantity': 1,
      };
}
