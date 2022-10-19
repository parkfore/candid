import 'package:beamer/beamer.dart';
import 'package:candid/home_screen.dart';
import 'package:candid/login_page.dart';
import 'package:candid/splash_screen.dart';
import 'package:candid/router/location.dart';
import 'package:flutter/material.dart';

final _routerDelegate = BeamerDelegate(guards: [
  BeamGuard(
    pathBlueprints: ['/'],
    check: (context, location) {
      return false;
    },
    showPage: BeamPage(
      child: LoginPage(), //false일때실행
    ),
  )
], locationBuilder: BeamerLocationBuilder(beamLocations: [HomeLocation()]));
//true일때 로그인페이지로

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(Duration(seconds: 2), () => 100),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return HomeScreen();
        } else if (snapshot.hasError) {
          print('error occur while loading');
        } else {
          return SplashScreen();
        }
      },
    );
  }
}

class CandidApp extends StatelessWidget {
  const CandidApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      theme: ThemeData(
        primaryColor: Colors.black,
        backgroundColor: Colors.white,
        primarySwatch: Colors.amber,
      ),
    );
  }
}
