import 'package:flutter/material.dart';
import 'package:first_flutter_app/pages/about.dart';
import 'package:first_flutter_app/pages/categories.dart';
import 'package:first_flutter_app/pages/home.dart';
import './pages/categories.dart';
import './pages/login.dart';
import './pages/store.dart';
import './pages/test.dart';

void main() => runApp(
    MyApp()
);

//---------------------------------------------------
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome to Flutter',
      home: Home(),
      //------
      routes: {
        'categories': (context){
          return Categories();
        },
        'homePage':(context){
          return Home();
        },
        'about':(context){
          return About();
        },
        'login':(context){
          return LogIn();
        },
        'store':(context){
          return Store();
        },
        //-----
      },
      // end
    );
  }
  // ----------- for errors i think ------------ //
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
