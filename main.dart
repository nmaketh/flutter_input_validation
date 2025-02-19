import 'package:flutter/material.dart';
import 'screens/screen1.dart';

/// The main entry point for the app. This function is called when the app is
/// launched and is responsible for setting up the Flutter environment and
/// running the app's [MyApp] widget.
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Multi-Form App',
      initialRoute: '/',
      routes: {
        '/': (context) => Screen1(),
      },
    );
    
  }
}
