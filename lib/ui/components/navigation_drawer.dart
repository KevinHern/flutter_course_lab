import 'package:flutter/material.dart';

/*
    TODO Laboratory #04 count: 3
*/

class NavDrawer extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  final greyOpacity = 0.5;
  final Function onFormPress, onCartPress;
  const NavDrawer(
      {required this.scaffoldKey,
      required this.onFormPress,
      required this.onCartPress,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(0.0),
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.green,
              image: null,
            ),
            child: Align(
              alignment: Alignment.bottomLeft,

              // TODO Laboratory #04
              /// Change font style
              child: Text(
                'Bienvenido',
                style: null,
              ),
            ),
          ),

          // TODO Laboratory #04
          /// Change the Icon's color to the primary color you defined and change the font style too
          ListTile(
            leading: Icon(
              Icons.list_alt,
              color: null,
            ),
            title: Text(
              'Form',
              style: null,
            ),
            onTap: () => onFormPress(),
          ),

          // TODO Laboratory #04
          /// Change the Icon's color to the primary color you defined and change the font style too
          ListTile(
            leading: Icon(
              Icons.shopping_cart,
              color: null,
            ),
            title: Text(
              'Shopping Cart',
              style: null,
            ),
            onTap: () => onCartPress(),
          ),
        ],
      ),
    );
  }
}
