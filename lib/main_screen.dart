import 'package:flutter/material.dart';
import 'package:flutter_course_labs/models/shop.dart';
import 'package:flutter_course_labs/ui/components/navigation_drawer.dart';

/*
    TO DO Laboratory #02 count: 1
    TO DO Laboratory #04 count: 1
    TO DO Laboratory #05 count: 1
    TO DO Laboratory #07 count: 1
*/

/// This is the root Widget of your application!
/// As you can see, this Widget is Stateful because the three screens you will implement in your app
/// share the shop model (which is your catalog) and the cart model. That means, it will be very likely
/// that if a change happens in one screen, we have to rebuild the entire Widget Tree to show the
/// correct information in the screen.

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  final Shop shop = Shop();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          automaticallyImplyLeading: true,

          // TO DO Laboratory #02
          /// Edit the text by introducing the name of your shop

          // TO DO Laboratory #04
          /// Remember to edit the font type. This is the title and you want to emphasize the name
          /// of the shop so the people can easily see it and remember it
          title: Text(
            'Your Shop Name Here',
            style: null,
          ),
        ),

        /// This is a custom Widget that shows a sliding menu from the left side of the screen.
        /// You can find its implementation in the file ui/components/navigation_drawer.dart
        drawer: NavDrawer(
          scaffoldKey: _scaffoldKey,

          // TO DO Laboratory #05
          /// You have to implement a way that links the UI, user interaction and the implemented Routing
          /// System in the main.dart file (initialRoute, Route Map, onGenerateRoute, etc.)
          /// When you press a certain option of this menu, you have to display the proper screen and this
          /// can be done by using Navigator.of(context).
          /// If you remember, there are many operations such as: pushNamed, pop, popAndPushNamed, etc.
          /// Your application will show them by default, the ItemDisplay Widget (which is the root Widget). With this in mind,
          /// you can use the pushNamed function to send them to the Form Screen
          ///
          /// Your task is to finish the function 'onFormPress' by using Navigator.of(context) and pushNamed.
          /// Remember that the EShopFormScreen Widget needs a shop model. If you look carefully, this Widget has
          /// access to said model. Remember to pass it as an argument by using the
          /// 'arguments' property of the pushNamed function!
          onFormPress: () => {},

          // TO DO Laboratory #07
          onCartPress: () => {},
        ),
        body: Container(),
      ),
    );
  }
}
