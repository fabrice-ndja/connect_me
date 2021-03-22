import 'package:connect_me/Colors/Couleurs.dart';
import 'package:connect_me/Pages/on_boarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  //Configuration l'etat de la barre
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarBrightness: Brightness.light,
    statusBarIconBrightness: Brightness.light,
  ));
  runApp(new MaterialApp(
    home: new MonApp(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      visualDensity: VisualDensity.adaptivePlatformDensity,
        pageTransitionsTheme: PageTransitionsTheme(builders: {
      TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      TargetPlatform.android: CupertinoPageTransitionsBuilder(),
    })),
  ));
}

class MonApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
        SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.transparent),
      );
    return  SplashScreen(
        seconds: 6,
        navigateAfterSeconds: new OnBoardingPage(),
        image: new Image.asset('assets/logos/logo.png'),
        backgroundColor: quatriemeCouleur,
        photoSize: 100.0,
        loaderColor: premiereCouleur);
  }
}
