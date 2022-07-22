import 'package:flutter/material.dart';
import 'package:flutter_course_labs/main_screen.dart';
import 'package:flutter_course_labs/models/shop.dart';
import 'package:flutter_course_labs/ui/form/form_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(const MyApp());
}

/*
    TODO Laboratory #02 count: 1
    TODO Laboratory #04 count: 3
    TODO Laboratory #05 count: 1
*/

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Course Project',
      theme: ThemeData(
        primarySwatch: Colors.blue,

        // TODO Laboratory #04
        /// Select a primary color and write here its 3 variations according to the Material Design Scheme.
        primaryColor: null,
        primaryColorLight: null,
        primaryColorDark: null,

        // TODO Laboratory #04
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

      // TODO Laboratory #02 and #04
      /// Replace the Widget with the Widget that contains your screen
      home: MainScreen(),

      // TO DO Laboratory #05
      /// Before Laboratory #05, we have been using the property 'home'
      /// to display a screen. However, by implementing Named Routes and its navigation system,
      /// the 'home' property is replaced by the property 'initialRoute'. Both can't coexist so you have to get
      /// rid of the previous implementation.
      /// The first screen the app shows is called the root screen. It is commonly named just '/'
      ///
      /// Your task is to get rid of the previous implementation, uncomment the initialRoute and assign '/' as the
      /// initialRoute.

      // initialRoute: '/',

      /// Once you have defined the initialRoute, the next step is to implement the Route Map
      /// in the property 'routes'.
      /// Here is where Flutter translates named routes to Widgets. Your task is to define a Route Map which
      /// translates the root screen '/' to the ItemDisplay Widget. I left a simple example of how to implement
      /// said Route Map.
      ///
      /// Your task is to uncomment routes and implement a translation between '/' and ItemDisplay Screen

      // routes: {
      //   '/': (context) => Container(),
      // },

      /// And the last step is to implement the onGenerateRoute property which allows you to pass arguments between
      /// screens. That means, you can share information between them and keep that information consistent across all the screens.
      /// This property also helps you to handle routes that aren't defined in the basic Route Map - it is very useful.
      ///
      /// Your task is to uncomment and implement the onGenerateRoute and pass a Shop Model to the EShopFormScreen Widget.
      /// The Route Name for the EShopFormScreen Widget is 'form'

      // onGenerateRoute: (settings) {
      //   /// The variable 'settings' contains more information when jumping from one screen to another.
      //   /// The most common information you will retrieve and manipulate are the route name and arguments.
      //   /// Take into consideration that sometimes you may need to cast the arguments to match the correct datatype
      //   /// since the arguments come as 'object' datatype which essentially represents anything.
      //   /// I left an example so you can understand better
      //
      //   /// settings.name contains the route name we want to jump, so we compare the name with many different options
      //   switch (settings.name) {
      //     case '/example':
      //
      //       /// Here we retrieve the arguments and the part 'as String' is the casting operation.
      //       /// In this example, we convert the arguments into a String because we need it. The Datatype may
      //       /// change depending of what arguments the screen needs
      //       final String someArgument = settings.arguments! as String;
      //
      //       return PageTransition(
      //         child: Text("Your screen here"),
      //         type: PageTransitionType.fade,
      //         settings: settings,
      //         duration: const Duration(seconds: 1),
      //       );
      //
      //     /// The default option is executed when settings.name didn't match with any of the cases implemented above.
      //     /// In this case, we throw an exception but in some other applications you may do something different
      //     default:
      //       throw Exception("Unknown Route detected");
      //   }
      // },
    );
  }
}
