import 'dart:async';

import 'package:flutter/material.dart';
import 'package:foobnb/screens/main_screen.dart';
import 'package:foobnb/screens/onboarding_screen.dart';
//import 'package:get_storage/get_storage.dart';

void main() //async
{
  // await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id: (context) => const SplashScreen(),
        OnboardingScreen.id: (context) => OnboardingScreen(),
        MainScreen.id: (context) => MainScreen(),
      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);
  static const String id = 'splash-screen';

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // final store = GetStorage();
  @override
  void initState() {
    Timer(
      Duration(seconds: 3),
      () {
        //    bool _boarding = store.read('onBoarding');
        //  _boarding == null
        //     ?
        Navigator.pushReplacementNamed(context, OnboardingScreen.id);
        //   : _boarding == true
        // ? Navigator.pushReplacementNamed(context, MainScreen.id)
        // : Navigator.pushReplacementNamed(context, OnboardingScreen.id);
      },
    );
    super.initState();
  }

  Widget build(BuildContext context) {
    // TODO set system ui mode to edge to edge

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Container(child: Image.asset('assets/images/logo.png'))),
    );
  }
}
