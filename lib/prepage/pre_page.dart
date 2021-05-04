import 'package:FireAll/prepage/splash.dart';
import 'package:flutter/material.dart';

class PrePage extends StatefulWidget {
  @override
  _PrePageState createState() => _PrePageState();
}

class _PrePageState extends State<PrePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fire All',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          accentColor: Colors.blueGrey, primaryColor: Colors.blueAccent),
      home: SplashScreen(),
    );
  }
}
