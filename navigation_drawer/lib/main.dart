import 'package:flutter/material.dart';
import 'package:navigation_drawer/components/DetailsScreen.dart';
import 'package:navigation_drawer/components/HomeScreen.dart';
import 'package:navigation_drawer/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        primaryColor: kPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
       
      ),

      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        // DetailsScreen.routeName: (context) => DetailsScreen(),
        '/details': (context) => DetailsScreen()
      },

      //home: HomeScreen(),
    );
  }
}


// import 'package:flutter/material.dart';

// void main() {
//   runApp(SampleApp());
// }

// class SampleApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Sample App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: SampleAppPage(),
//     );
//   }
// }

// class SampleAppPage extends StatefulWidget {
//   SampleAppPage({Key key}) : super(key: key);

//   @override
//   _SampleAppPageState createState() => _SampleAppPageState();
// }

// class _SampleAppPageState extends State<SampleAppPage> {
//   // Default placeholder text.
//   String textToShow = 'I Like Flutter';

//   void _updateText() {
//     setState(() {
//       // Update the text.
//       textToShow = 'Flutter is Awesome!';
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Sample App'),
//       ),
//       body: Center(child: Text(textToShow)),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _updateText,
//         tooltip: 'Update Text',
//         child: Icon(Icons.update),
//       ),
//     );
//   }
// }
