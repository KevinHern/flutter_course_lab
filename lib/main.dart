import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

/*
    TO DO Laboratory #04 count: 2
*/

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Course Labs',
      theme: ThemeData(
        primarySwatch: Colors.blue,

        // TO DO Laboratory #04
        /// Select a primary color and write here its 3 variations according to the Material Design Scheme.
        primaryColor: null,
        primaryColorLight: null,
        primaryColorDark: null,

        // TO DO Laboratory #04
        /// Select one font for a Headline, Subtitle and Body text and write them here. You will likely use
        /// Google Fonts package because it contains most if not all the existing fonts used for commercial purposes.
        /// Also remember, each type of font will have different font sizes and whatnot. Some may be bold by default and
        /// others not. You can edit these properties too.
        /// I'll give you an example
        textTheme: TextTheme(
          headline1: GoogleFonts.montserrat(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
          subtitle1: null,
          bodyText1: null,
        ),
      ),
      home: Container(),
    );
  }
}
