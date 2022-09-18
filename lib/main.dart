

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'home_screen.dart';
import 'app/sign_in/sign_in_page.dart';

 void main() => runApp(MyApp());
  
class MyApp extends StatelessWidget{
  @override 
  Widget build(BuildContext context)
    {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
       // home: SignInPage(),

      );
    }
}