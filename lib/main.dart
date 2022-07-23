import 'package:flutter/material.dart';
import 'package:flutter_course_labs/main_screen.dart';
import 'package:flutter_course_labs/models/cart.dart';
import 'package:flutter_course_labs/models/shop.dart';
import 'package:flutter_course_labs/ui/form/form_screen.dart';
import 'package:flutter_course_labs/ui/my_cart/my_cart_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(const MyApp());
}

/*
    TODO Laboratory #04 count: 3
    TODO Laboratory #05 count: 3
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
        /// You have to use the class Color() and use the color's hex number.
        ///
        /// Example:
        /// Lets say you choose the color light green as your primary color with the following hex number: #9ccc65
        /// You have to substitute the 'null' value with const Color(0xFF9ccc65)
        /// The prefix '0xFF' tells Flutter to interpret the hex color and the Fs indicate the alpha value.
        /// Do the same with the 2 variations
        primaryColor: null,
        primaryColorLight: null,
        primaryColorDark: null,

        // TODO Laboratory #04
        /// Select one font for a Headline, Subtitle and Body text and write them here. You will likely use
        /// Google Fonts package because it contains most if not all the existing fonts used for commercial purposes.
        /// Also remember, each type of font will have different font sizes and whatnot. Some may be bold by default and
        /// others not. You can edit these properties too.
        /// Remember the accessibility tab that you find in the material.io color selection tool. It tells
        /// the color of the font and the minimum opacity so your text is readable.
        /// I'll give you an example considering light green as the primary color
        textTheme: TextTheme(
          headline1: GoogleFonts.montserrat(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            color: Colors.black.withOpacity(0.75),
          ),
          subtitle1: null,
          bodyText1: null,
        ),

        // TODO Laboratory #04
        /// Set the AppBar's main color to the primary Color. In other words, copy the color
        appBarTheme: const AppBarTheme(
          color: null,
        ),
      ),

      // TODO Laboratory #05
      /// Remove this line and implement the TODO below this one
      home: const MainScreen(),

      // TODO Laboratory #05
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
      //   '/': (context) => const Container(),
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
      //         child: Container(),
      //         type: PageTransitionType.fade,
      //         settings: settings,
      //         duration: const Duration(seconds: 1),
      //       );
      //
      //     // TODO Laboratory #07
      //     /// Implement the option to jump to the MyCartScreen Widget. Have in mind it needs 2 different arguments
      //     /// that come packed in a list. First cast the arguments list explicitly into a List<dynamic>
      //     /// and then extract the arguments individually. Don't forget to cast them too
      //     /// Ill help you with one:
      //     /// final List castedArguments = (settings.arguments!) as List<dynamic>;
      //     /// final Shop shop = castedArguments as Shop; (assuming it comes in the first position)
      //     case '':
      //       return PageTransition(
      //         child: Container(),
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
